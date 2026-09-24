import { NextResponse } from "next/server";

import prismadb from "@/lib/prismadb";
import { checkAuth, checkBearerAPI, getSession } from "@/app/admin/actions";
import { revalidatePath } from "next/cache";
import path from 'path';
import fs from 'fs/promises';
import { multipledatasheetproduct } from "@prisma/client";
import { uploadsprefix } from "@/lib/spec-interface";

const slugify = (str: string): string => str.toLowerCase()
                            .replace(/[^a-z0-9]+/g, '-')
                            .replace(/(^-|-$)+/g, '');

export async function GET(req: Request, props: { params: Promise<{ productId: string }> }) {
  const params = await props.params;
  try {
    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }

    const prod = await prismadb.product.findUnique({
      where: {
        id: params.productId,
      }
    });
  
    return NextResponse.json(prod);
  } catch (error) {
    console.log('[SINGLE_PRODUCT_GET]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};

export async function DELETE(
  req: Request,
  props: { params: Promise<{ productId: string, brandId: string }> }
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

    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }
    
    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }   

    const oldUrl = await prismadb.product.findMany({
      where: {
        id: params.productId
      },
      select:{
        cover_img: true,
        multipleDatasheetProduct: true,
      }
    })
    //Delete physical files
    if(oldUrl && oldUrl.length > 0) {
      oldUrl.map( async (val) => {
        if(val.cover_img.startsWith(uploadsprefix)){
          const filename = val.cover_img.slice(uploadsprefix.length)
          // if (filename && path.basename(filename) === filename) {
            const imgPath = path.join(process.cwd(), 'uploads', filename);
            try {
              await fs.unlink(imgPath);
            } catch (error) {
              console.warn(`Could not delete file ${val.cover_img}:`, error);
            } 
          // }
        }
        else{
          console.warn(`Not inside uploads folder`);
        }

        val.multipleDatasheetProduct.length > 0 && val.multipleDatasheetProduct.map(async (val2) => {
          if(val2.url.startsWith(uploadsprefix)){
            const filename = val2.url.slice(uploadsprefix.length)
            // if (filename && path.basename(filename) === filename) {
              const imgPath = path.join(process.cwd(), 'uploads', filename);
              try {
                await fs.unlink(imgPath);
              } catch (error) {
                console.warn(`Could not delete file ${val2.url}:`, error);
              } 
            // }
          }
          else{
            console.warn(`Not inside uploads folder`);
          }
        })
        //Delete multipleDatasheetProduct records
        await prismadb.multipledatasheetproduct.deleteMany({
          where: {
            productId: params.productId,
          },
        });
      })
    }

    const featuredUrl = await prismadb.product.findFirst({
      where: {
        id: params.productId
      },
      select:{
        featured_img: true
      }
    })
    //Delete physical files
    if(featuredUrl) {
      if(featuredUrl.featured_img.startsWith(uploadsprefix)){
        const filename = featuredUrl.featured_img.slice(uploadsprefix.length)
        // if (filename && path.basename(filename) === filename) {
          const imgPath = path.join(process.cwd(), 'uploads', filename);
          try {
            await fs.unlink(imgPath);
          } catch (error) {
            console.warn(`Could not delete file ${featuredUrl.featured_img}:`, error);
          } 
        // }
      }
      else{
        console.warn(`Not inside uploads folder`);
      }
    }

    await prismadb.specificationconnector.deleteMany({
      where: {productId: params.productId}
    })
    await prismadb.allproductcategory.deleteMany({
      where: {productId: params.productId}
    })

    await prismadb.product.deleteMany({
      where: {
        id: params.productId
      }
    });
  
    return NextResponse.json("success");
  } catch (error) {
    console.log('[SINGLE_PRODUCT_DELETE]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};


export async function PATCH(
  req: Request,
  props: { params: Promise<{ productId: string, brandId: string }> }
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

    const { name, description, description_eng, cover_img, new_product, isArchived, isFeatured, multipleDatasheetProduct } = body;

    if (!name) {
      return new NextResponse("Name is required", { status: 400 });
    }

    if (!params.productId) {
      return new NextResponse("Product id is required", { status: 400 });
    }
    
    if(!(await checkAuth(session.isAdmin!, params.brandId, session.userId!))){
      return NextResponse.json("unauthorized");
    }    

    if(params.productId != 'new'){
      const oldUrl = await prismadb.product.findFirst({
        where: {
          id: params.productId
        },
        select:{
          cover_img: true
        }
      })
      //Delete physical files
      if(oldUrl && oldUrl.cover_img && oldUrl.cover_img !== cover_img) {
        if(oldUrl.cover_img.startsWith(uploadsprefix)){
          const filename = oldUrl.cover_img.slice(uploadsprefix.length)
          // if (filename && path.basename(filename) === filename) {
            const imgPath = path.join(process.cwd(), 'uploads', filename);
            try {
              await fs.unlink(imgPath);
            } catch (error) {
              console.warn(`Could not delete file ${oldUrl.cover_img}:`, error);
            } 
          // }
        }
        else{
          console.warn(`Not inside uploads folder`);
        }
      }

      //DATASHEET
      const datasheetOld = await prismadb.multipledatasheetproduct.findMany({
        where: {
          productId: params.productId,
        },
      });
      let finalfoundDatashset : multipledatasheetproduct[] = []
      datasheetOld.forEach((val) => {
        const found = multipleDatasheetProduct.find((value: multipledatasheetproduct) => value.url === val.url);
        
        if (found && !finalfoundDatashset.some((item) => item.url === found.url)) {
          finalfoundDatashset.push(found);
        }
      });
      //DELETE DATASHEET
      //Delete physical files
      for (const datasheet of datasheetOld) {
        const isInFinal = finalfoundDatashset.some((item) => item.url === datasheet.url);
        if (isInFinal) continue;

        if (datasheet.url) {
          if(datasheet.url.startsWith(uploadsprefix)){
            const filename = datasheet.url.slice(uploadsprefix.length)
            // if (filename && path.basename(filename) === filename) {
              const imgPath = path.join(process.cwd(), 'uploads', filename);
              try {
                await fs.unlink(imgPath);
              } catch (error) {
                console.warn(`Could not delete file ${datasheet.url}:`, error);
              } 
            // }
          }
          else{
            console.warn(`Not inside uploads folder`);
          }
        }
      }
      //Delete oldDatasheet records
      await prismadb.multipledatasheetproduct.deleteMany({
        where: {
          productId: params.productId,
          url: {
            notIn: finalfoundDatashset.map((val) => val.url),
          },
        },
      });
      if (multipleDatasheetProduct.length !== 0) {
        const creations = multipleDatasheetProduct.map(async (value: multipledatasheetproduct) => {
          if(value !== null && value !== undefined){
            const alreadyInDB = finalfoundDatashset.some((val) => val.url === value.url);
            if (!alreadyInDB && value.url !== '') {
              await prismadb.multipledatasheetproduct.create({
                data: {
                  productId: params.productId,
                  url: value.url,
                  name: value.name,
                }
              });
            }
            else{ //UPDATE NAME
              const datasheet_Id = await prismadb.multipledatasheetproduct.findFirst({
                where: {
                  url: value.url,
                  productId: params.productId
                },
                select: {
                  id: true
                }
              })
              if (datasheet_Id) {
                await prismadb.multipledatasheetproduct.update({
                  where: {
                    id: datasheet_Id.id
                  },
                  data: {
                    name: value.name,
                  },
                });
              }
            }
          }
        });

        await Promise.all(creations);
      }

      await prismadb.product.update({
        where: {
          id: params.productId
        },
        data: { 
          name,
          slug: slugify(name),
          description,
          description_eng,
          cover_img,
          new_product,
          isArchived,
          isFeatured,
          updatedAt: new Date(),
          updatedBy: session.name ?? '',
        },
      })
    }
    else{
      const product = await prismadb.product.create({
        data: {
          name,
          description,
          description_eng,
          featuredDesc: '',
          brandId: params.brandId,
          slug: slugify(name),
          cover_img,
          new_product,
          isArchived,
          isFeatured,
          updatedAt: new Date(),
          createdAt: new Date(),
          updatedBy: session.name ?? '',
        },
      })

      if(multipleDatasheetProduct.length!=0){
      multipleDatasheetProduct.map(async (datasheet: multipledatasheetproduct) => {
          if(datasheet.url!=''){
            await prismadb.multipledatasheetproduct.create({
              data:{
                productId: product.id,
                url:datasheet.url,
                name: datasheet.name
              }
            })
          }
        })
      }
    }


  
    return NextResponse.json("success");
  } catch (error) {
    console.log('[SINGLE_PRODUCT_PATCH]', error);
    return new NextResponse("Internal error", { status: 500 });
  }
};
