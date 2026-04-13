import { Prisma } from "@prisma/client"

export type ProductCardData = Prisma.productGetPayload<{
  select: {
    id: true
    cover_img: true
    name: true
    slug: true
    // allCat: {
    //   include: {
    //     category: true
    //   }
    // },
  }
}>