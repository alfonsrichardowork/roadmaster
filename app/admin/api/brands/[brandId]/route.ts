import { NextResponse } from "next/server";

import prismadb from "@/lib/prismadb";
import { checkAuth, checkBearerAPI, getSession } from "@/app/admin/actions";
import { redirect } from "next/navigation";
import path from 'path';
import fs from 'fs/promises';


export async function PATCH(req: Request, props: { params: Promise<{ brandId: string }> }) {
  const params = await props.params;
  try {
    const session = await getSession();

    if(!session.isLoggedIn){
      return NextResponse.json("expired_session")
    }

    if(!(await checkBearerAPI(session))){
      session.destroy();
      return NextResponse.json("invalid_token")
    }
    
    if(!session.isAdmin){
      return NextResponse.json("not_admin")
    }

    const body = await req.json();

    const { name, catalogues } = body;

    if (!name) {
      return new NextResponse("Name is required", { status: 400 });
    }

    if (!params.brandId) {
      return new NextResponse("Brand id is required", { status: 400 });
    }

    if (!session.isLoggedIn) {
      return new NextResponse("Unauthenticated", { status: 403 });
    }
    
    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return new NextResponse("Unauthorized", { status: 405 });
    }

    const oldBrand = await prismadb.brand.findFirst({
      where: {
        id: params.brandId
      },
      select: {
        catalogues: true
      }
    })

    if(oldBrand && oldBrand.catalogues !== catalogues) {
      const datasheetPath = path.join(process.cwd(), oldBrand.catalogues);
      try {
        await fs.unlink(datasheetPath);
      } catch (error) {
        console.warn(`Could not delete file ${oldBrand.catalogues}:`, error);
      }
    }
    
    const brand = await prismadb.brand.updateMany({
      where: {
        id: params.brandId,
        userId: session.userId,
      },
      data: {
        name,
        catalogues
      }
    });

    await prismadb.roles.updateMany({
      where: {
        brandId: params.brandId
      },
      data: {
        brandName: name
      }
    });
  
    return NextResponse.json(brand);
  } catch (error) {
    console.log('[BRAND_PATCH]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};


export async function DELETE(req: Request, props: { params: Promise<{ brandId: string }> }) {
  const params = await props.params;
  try {
    const session = await getSession();

    if(!session.isLoggedIn){
      redirect("/admin")
    }

    if (!params.brandId) {
      return new NextResponse("Brand id is required", { status: 400 });
    }
    
    if (!session.isLoggedIn) {
      return new NextResponse("Unauthenticated", { status: 403 });
    }
    
    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return new NextResponse("Unauthorized", { status: 405 });
    }
    
     const oldBrand = await prismadb.brand.findFirst({
      where: {
        id: params.brandId
      },
      select: {
        catalogues: true
      }
    })

    if(oldBrand && oldBrand.catalogues !== '') {
      const datasheetPath = path.join(process.cwd(), oldBrand.catalogues);
      try {
        await fs.unlink(datasheetPath);
      } catch (error) {
        console.warn(`Could not delete file ${oldBrand.catalogues}:`, error);
      }
    }

    const brand = await prismadb.brand.deleteMany({
      where: {
        id: params.brandId,
        userId: session.userId
      }
    });
  
    return NextResponse.json(brand);
  } catch (error) {
    console.log('[BRAND_DELETE]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};
