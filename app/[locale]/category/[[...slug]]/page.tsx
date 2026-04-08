import { Button } from '@/components/ui/button'
import { ScrollArea, ScrollBar } from '@/components/ui/scroll-area'
import { Separator } from '@/components/ui/separator'
import prismadb from '@/lib/prismadb'
import Link from 'next/link'
import { ProductCard } from '@/components/productCard'
import { getLocale, getTranslations } from 'next-intl/server'

interface ProductsPageProps {
  params: Promise<{
    slug?: string[]
  }>
}

export default async function ProductsPage({ params }: ProductsPageProps) {
  const { slug = [] } = await params
  const locale = await getLocale();
  const t = await getTranslations("All Category Page")
  let backgroundImage = '/images/roadmaster/product-page-bg.webp'
  let heroTtile = t('title')
  let heroDesc = t('desc')
  
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
      name_eng: true,
      description_eng: true,
      slug_eng: true,
      thumbnail_url: true
    }
  })

  if(slug.length > 0) {
    backgroundImage = categories.find((cat) => cat.slug === slug[slug.length - 1])?.thumbnail_url || backgroundImage
    heroTtile = locale === 'en' ? categories.find((cat) => cat.slug_eng === slug[slug.length - 1])?.name_eng || heroTtile : categories.find((cat) => cat.slug === slug[slug.length - 1])?.name || heroTtile
    heroDesc = locale === 'en' ? categories.find((cat) => cat.slug_eng === slug[slug.length - 1])?.description_eng || heroDesc : categories.find((cat) => cat.slug === slug[slug.length - 1])?.description || heroDesc
  }
  

  const slugField = locale === "en" ? "slug_eng" : "slug";
  const slugValue = slug[slug.length - 1];

  const allProducts = await prismadb.product.findMany({
    where: slug.length > 0
      ? {
          allCat: {
            some: {
              [slugField]: slugValue
            }
          }
        }
      : undefined,
    select: {
      id: true,
      cover_img: true,
      name: true,
      slug: true,
      allCat: {
        include: {
          category: true
        }
      }
    },
    orderBy: {
      updatedAt: "desc"
    }
  });




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