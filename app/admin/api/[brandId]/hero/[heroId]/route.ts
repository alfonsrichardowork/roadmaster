import { NextResponse } from 'next/server';

import prismadb from '@/lib/prismadb';
import { checkAuth, checkBearerAPI, getSession } from '@/app/admin/actions';
import path from 'path';
import fs from 'fs/promises';
import { revalidatePath } from 'next/cache';

export async function GET(
  req: Request,
  props: { params: Promise<{ brandId: string, heroId: string }> }
) {
  const params = await props.params;
  try {

    if (!params.brandId) {
      return new NextResponse("brand id is required", { status: 400 });
    }

    const onehero = await prismadb.hero.findMany({
      where: {
        id: params.heroId
      },
      orderBy: {
        createdAt: 'desc',
      }
    });

    return NextResponse.json(onehero);
  } catch (error) {
    console.log('[SINGLE_HERO_GET]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};


export async function PATCH(
  req: Request,
  props: { params: Promise<{ heroId: string, brandId: string }> }
) {
  const params = await props.params;
  try {
    const session = await getSession();

    if(!session.isLoggedIn || !session){
      return NextResponse.json("expired_session")
    }

    if(!(await checkBearerAPI(session))){
      session.destroy();
      return NextResponse.json("invalid_token")
    }

    const body = await req.json();

    const { hero_img, hero_img_mobile } = body;



    if (!params.heroId) {
      return new NextResponse("Hero id is required", { status: 400 });
    }

    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }    

    if(params.heroId != 'new'){
      const heroImageOld = await prismadb.hero.findFirst({
        where: {
          id: params.heroId
        },
        select: {
          hero_img: true,
          hero_img_mobile: true
        }
      })

      if(heroImageOld && heroImageOld.hero_img && heroImageOld.hero_img !== hero_img) {
        //DELETE FILE
        const heroImgPath = path.join(process.cwd(), heroImageOld.hero_img);

        try {
          await fs.unlink(heroImgPath);
        } catch (error) {
          console.warn(`Could not delete file ${heroImageOld.hero_img}:`, error);
        }
      }

      if(heroImageOld && heroImageOld.hero_img_mobile && heroImageOld.hero_img_mobile !== hero_img_mobile) {
        //DELETE FILE
        const heroImgPathMobile = path.join(process.cwd(), heroImageOld.hero_img_mobile);

        try {
          await fs.unlink(heroImgPathMobile);
        } catch (error) {
          console.warn(`Could not delete file ${heroImageOld.hero_img_mobile}:`, error);
        }
      }

      await prismadb.hero.update({
        where: {
          id: params.heroId,
        },
        data: {
          hero_img,
          hero_img_mobile,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      })

     
    }
    else{
      await prismadb.hero.create({
        data: {
          hero_img,
          hero_img_mobile,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
      })
    }

    revalidatePath('')
    revalidatePath('/en')
    return NextResponse.json("success");
  } catch (error) {
    console.log('[HERO_PATCH]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};
  

  export async function DELETE(
    req: Request,
    props: { params: Promise<{ brandId: string, heroId: string }> }
  ) {
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
  
      if (!params.heroId) {
        return new NextResponse("Hero id is required", { status: 400 });
      }
      
      if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
        return NextResponse.json("unauthorized");
      }    

      const aboutToDelete = await prismadb.hero.findUnique({
        where:{
          id: params.heroId
        },
        select: {
          hero_img: true,
          hero_img_mobile: true
        }
      })

      if(aboutToDelete){
        //Delete physical files
        if (aboutToDelete.hero_img) {
          const imagePath = path.join(process.cwd(), aboutToDelete.hero_img);

          try {
            await fs.unlink(imagePath);
          } catch (error) {
            console.warn(`Could not delete file ${aboutToDelete.hero_img}:`, error);
          }
        }


        //Delete physical files
        if (aboutToDelete.hero_img_mobile) {
          const imagePath = path.join(process.cwd(), aboutToDelete.hero_img_mobile);

          try {
            await fs.unlink(imagePath);
          } catch (error) {
            console.warn(`Could not delete file ${aboutToDelete.hero_img_mobile}:`, error);
          }
        }
      }
    
  
      const product = await prismadb.hero.deleteMany({
        where: {
          id: params.heroId
        },
      });

      revalidatePath('')
      revalidatePath('/en')
  
      return NextResponse.json(product);
    } catch (error) {
      console.log('[HERO_DELETE]', error);
      return new NextResponse("Internal error", { status: 500 });
    }
  };
  