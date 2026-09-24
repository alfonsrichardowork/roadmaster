import { NextResponse } from 'next/server';

import prismadb from '@/lib/prismadb';
import { checkAuth, checkBearerAPI, getSession } from '@/app/admin/actions';
import path from 'path';
import fs from 'fs/promises';
import { revalidatePath } from 'next/cache';
import { uploadsprefix } from '@/lib/spec-interface';

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
        if(heroImageOld.hero_img.startsWith(uploadsprefix)){
          const filename = heroImageOld.hero_img.slice(uploadsprefix.length)
          // if (filename && path.basename(filename) === filename) {
            const imgPath = path.join(process.cwd(), 'uploads', filename);
            try {
              await fs.unlink(imgPath);
            } catch (error) {
              console.warn(`Could not delete file ${heroImageOld.hero_img}:`, error);
            } 
          // }
        }
        else{
          console.warn(`Not inside uploads folder`);
        }
      }

      if(heroImageOld && heroImageOld.hero_img_mobile && heroImageOld.hero_img_mobile !== hero_img_mobile) {
        //DELETE FILE
        if(heroImageOld.hero_img_mobile.startsWith(uploadsprefix)){
          const filename = heroImageOld.hero_img_mobile.slice(uploadsprefix.length)
          // if (filename && path.basename(filename) === filename) {
            const imgPath = path.join(process.cwd(), 'uploads', filename);
            try {
              await fs.unlink(imgPath);
            } catch (error) {
              console.warn(`Could not delete file ${heroImageOld.hero_img_mobile}:`, error);
            } 
          // }
        }
        else{
          console.warn(`Not inside uploads folder`);
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
          if(aboutToDelete.hero_img.startsWith(uploadsprefix)){
            const filename = aboutToDelete.hero_img.slice(uploadsprefix.length)
            // if (filename && path.basename(filename) === filename) {
              const imgPath = path.join(process.cwd(), 'uploads', filename);
              try {
                await fs.unlink(imgPath);
              } catch (error) {
                console.warn(`Could not delete file ${aboutToDelete.hero_img}:`, error);
              } 
            // }
          }
          else{
            console.warn(`Not inside uploads folder`);
          }
        }


        //Delete physical files
        if (aboutToDelete.hero_img_mobile) {
          if(aboutToDelete.hero_img_mobile.startsWith(uploadsprefix)){
            const filename = aboutToDelete.hero_img_mobile.slice(uploadsprefix.length)
            // if (filename && path.basename(filename) === filename) {
              const imgPath = path.join(process.cwd(), 'uploads', filename);
              try {
                await fs.unlink(imgPath);
              } catch (error) {
                console.warn(`Could not delete file ${aboutToDelete.hero_img_mobile}:`, error);
              } 
            // }
          }
          else{
            console.warn(`Not inside uploads folder`);
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
  