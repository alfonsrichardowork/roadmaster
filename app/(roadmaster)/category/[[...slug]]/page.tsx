





// import { Button } from '@/components/ui/button'
// import { ScrollArea } from '@/components/ui/scroll-area'
// import { Separator } from '@/components/ui/separator'
// import prismadb from '@/lib/prismadb'
// import { Star, ArrowRight } from 'lucide-react'
// import Link from 'next/link'


// export default async function ProductsPage() {
//   const categories = await prismadb.allcategory.findMany({
//     where: {
//       productCategories: {
//         some: {}
//       },
//       type: "Category"
//     },
//     select: {
//       id: true,
//       name: true,
//       slug: true
//     }
//   })

//   const categoryIds = await prismadb.allproductcategory.findMany({
//     where: {
//       categoryId: {
//         in: categories.map((cat) => cat.id)
//       }
//     }
//   })

//   const products = await prismadb.product.findMany({
//     where: {
//       id: {
//         in: categoryIds.map((cat) => cat.productId)
//       }
//     }
//   })


//   return (
//     <>
//         {/* Hero Section */}
//         <section className="relative py-40 px-4 sm:px-6 lg:px-8 overflow-hidden">
//           {/* Background Image */}
//           <img 
//             src="/images/roadmaster/product-page-bg.webp"
//             alt="Product Page Background"
//             className="absolute inset-0 w-full h-full object-cover z-0"
//           />
 
//           {/* Content */}
//           <div className="relative z-10 max-w-7xl mx-auto">
//             <div className="fade-in-down space-y-6">
//               <h1 className="text-3xl md:text-4xl font-bold text-primary leading-tight">
//                 Our Product Collection
//               </h1>
//               <p className="text-md text-foreground/70 max-w-3xl">
//                 Discover the perfect speaker for every moment, from portable to powered.
//               </p>
//             </div>
//           </div>
//         </section>
//         {/* Categories Section */}
        
//         <div className="max-w-6xl mx-auto relative z-10 pt-8 pb-20">
//           <div className="fade-in-down text-center py-4">
//             <h2 className="text-3xl font-bold text-primary">All Categories</h2>
//             {/* <p className="text-foreground/70">Find the perfect speaker for your needs</p> */}
//           </div>
//           <Separator className='w-full fade-in-down' />
          
//         <ScrollArea className="w-full whitespace-nowrap border-none py-4">
//             <div className="flex justify-center items-center fade-in-down">
//               {categories.map((cat) => (
//                 <Button asChild key={cat.id} variant="link">
//                   <Link href={`/products?category=${cat.id}`}>
//                     {cat.name}
//                   </Link>
//                 </Button>
//               ))}
//             </div>
//           </ScrollArea>
//         </div>

//         {/* All Products Section */}
//         <section className="py-24 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background relative overflow-hidden">
//           <div className="absolute top-10 right-10 w-96 h-96 bg-accent/5 rounded-full blur-3xl opacity-40"></div>

//           <div className="max-w-6xl mx-auto relative z-10">
//             <div className="fade-in-down text-center space-y-6 mb-20">
//               <h2 className="text-3xl font-bold text-primary">Featured Products</h2>
//               <p className="text-foreground/70">Popular speakers trusted by thousands</p>
//             </div>

//             <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
//               {products.map((product, index) => (
//                 <div
//                   key={product.id}
//                   className={`fade-in-up stagger-${(index % 4) + 1} group relative`}
//                 >
//                   <div className="absolute -inset-0.5 bg-gradient-to-br from-accent/30 to-transparent opacity-0 group-hover:opacity-100 rounded-lg transition-opacity duration-300 blur-sm"></div>

//                   <Link href={`/products/${product.id}`} className="relative bg-white rounded-lg shadow-md hover:shadow-2xl transition-all duration-500 overflow-hidden flex flex-col h-full group-hover:translate-y-[-8px] block">
//                     {/* Product Image Area */}
//                     <div className="relative h-48 bg-gradient-to-br from-accent/20 to-accent/5 flex items-center justify-center overflow-hidden">
//                       <div className="absolute inset-0 bg-gradient-to-t from-accent/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
//                       <div className="relative z-10 group-hover:scale-125 transition-transform duration-500">
//                         <span className="text-6xl inline-block">{product.emoji}</span>
//                       </div>
//                     </div>

//                     {/* Product Info */}
//                     <div className="p-6 flex flex-col flex-1">
//                       <p className="text-sm text-accent font-semibold uppercase tracking-wider mb-2">
//                         {product.category}
//                       </p>
//                       <h3 className="text-xl font-bold text-primary mb-3 group-hover:text-accent transition-colors">
//                         {product.name}
//                       </h3>

//                       <p className="text-sm text-foreground/60 mb-4">{product.description}</p>

//                       {/* Rating */}
//                       <div className="flex items-center gap-2 mb-4">
//                         <div className="flex gap-0.5">
//                           {[...Array(5)].map((_, i) => (
//                             <Star
//                               key={i}
//                               size={14}
//                               className={i < Math.floor(product.rating) ? 'fill-accent text-accent' : 'text-border'}
//                             />
//                           ))}
//                         </div>
//                         <span className="text-xs text-foreground/60">
//                           {product.rating} ({product.reviews})
//                         </span>
//                       </div>

//                       {/* Price */}
//                       <div className="mb-6 mt-auto">
//                         <p className="text-3xl font-bold text-primary">${product.price}</p>
//                       </div>

//                       {/* Button */}
//                       <Button className="w-full bg-primary text-primary-foreground hover:bg-primary/90 transition-all duration-300 transform hover:scale-105 active:scale-95">
//                         View Details
//                       </Button>
//                     </div>
//                   </Link>
//                 </div>
//               ))}
//             </div>
//           </div>
//         </section>
//     </>
//   )
// }






// app/products/[[...slug]]/page.tsx

import { Button } from '@/components/ui/button'
import { ScrollArea, ScrollBar } from '@/components/ui/scroll-area'
import { Separator } from '@/components/ui/separator'
import prismadb from '@/lib/prismadb'
import Link from 'next/link'
import { ProductCard } from '@/components/productCard'

interface ProductsPageProps {
  params: Promise<{
    slug?: string[]
  }>
}

export default async function ProductsPage({ params }: ProductsPageProps) {
  const { slug = [] } = await params
  let backgroundImage = '/images/roadmaster/product-page-bg.webp'
  let heroTtile = 'Our Product Collection'
  let heroDesc = 'Discover the perfect speaker for every moment, from portable to powered.'
  
  const categories = await prismadb.allcategory.findMany({
    where: {
      productCategories: {
        some: {}
      },
      type: "Category"
    },
    select: {
      id: true,
      name: true,
      description: true,
      slug: true,
      thumbnail_url: true
    }
  })

  if(slug.length > 0) {
    backgroundImage = categories.find((cat) => cat.slug === slug[slug.length - 1])?.thumbnail_url || backgroundImage
    heroTtile = categories.find((cat) => cat.slug === slug[slug.length - 1])?.name || heroTtile
    heroDesc = categories.find((cat) => cat.slug === slug[slug.length - 1])?.description || heroDesc
  }
  

  const allProducts = await prismadb.product.findMany({
    where: slug.length > 0
      ? {
          allCat: {
            some: {
              slug: slug[slug.length - 1],
            },
          },
        }
      : undefined,
    select: {
      id: true,
      cover_img: true,
      name: true,
      slug: true,
      allCat: true
    },
    orderBy: {
      updatedAt: 'desc'
    }
  })




  return (
    <>
        <section className="relative py-40 px-4 sm:px-6 lg:px-8 overflow-hidden">
          <img 
            src={backgroundImage}
            alt="Product Page Background"
            className="absolute inset-0 w-full h-full object-cover z-0"
          />

          {/* Gradient Overlay */}
          <div className="absolute inset-0 bg-gradient-to-r from-black/60 via-black/30 to-black/10 z-[1]" />

          <div className="relative z-10 max-w-7xl mx-auto">
            <div className="fade-in-down space-y-6">
              <h1 className="text-3xl md:text-4xl font-bold text-background leading-tight">
                {heroTtile}
              </h1>
              <p className="text-md text-background/70 max-w-3xl">
                {heroDesc}
              </p>
            </div>
          </div>
        </section>
        {/* Categories Section */}
        <div className="max-w-7xl mx-auto relative z-10 pt-8 pb-20 px-4 sm:px-6 lg:px-8 ">
          <div className="fade-in-down text-center py-4">
            <h2 className="text-3xl font-bold text-primary">All Categories</h2>
            {/* <p className="text-foreground/70">Find the perfect speaker for your needs</p> */}
          </div>
          <Separator className='w-full fade-in-down' />
          <div className='pt-4 pb-8'>
            <ScrollArea className="w-full whitespace-nowrap border-none">
              <div className="flex justify-center items-center fade-in-down">
                <Button asChild key={'all products'} variant="link" className={`${slug.length === 0 && 'underline font-bold'}`}>
                    <Link href={`/category`}>
                      All Products
                    </Link>
                  </Button>
                {categories.map((cat) => (
                  <Button asChild key={cat.id} variant="link" className={`${slug.length > 0 && slug[slug.length - 1] === cat.slug && 'underline font-bold'}`}>
                    <Link href={`/category/${cat.slug}`}>
                      {cat.name}
                    </Link>
                  </Button>
                ))}
              </div>
              <ScrollBar orientation="horizontal" />
            </ScrollArea>
          </div>
           <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
              {allProducts.map((product, index) => (
                <ProductCard product={product} key={product.id} index={index} />
              ))}
            </div>
        </div>
    </>
  )
}