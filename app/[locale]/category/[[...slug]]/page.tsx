import { Button } from '@/components/ui/button'
import { ScrollArea, ScrollBar } from '@/components/ui/scroll-area'
import { Separator } from '@/components/ui/separator'
import prismadb from '@/lib/prismadb'
import { ProductCard } from '@/components/productCard'
import { getLocale, getTranslations } from 'next-intl/server'
import { Link } from '@/i18n/navigation'

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
  let heroTitle = t('title')
  let heroDesc = t('desc')
  let allSpeakerDynamic = 'Speaker'
  
  const slugField = locale === "en" ? "slug_eng" : "slug";
  const slugValue = slug[slug.length - 1];

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

  const subcategories = await prismadb.allcategory.findMany({
    where: {
      type: "Sub Category",
      productCategories: {
        some: {
          product: {
            allCat: {
              some: {
                category: {
                  [slugField]: slug[0],
                  type: "Category"
                }
              }
            }
          }
        }
      }
    },
    distinct: ["id"]
  })

  if(slug.length > 1) {
    backgroundImage = subcategories.find((cat) => (locale === 'en' ? cat.slug_eng : cat.slug) === slug[slug.length - 1])?.thumbnail_url || backgroundImage
    heroTitle = locale === 'en' ? subcategories.find((cat) => cat.slug_eng === slug[slug.length - 1])?.name_eng || heroTitle : subcategories.find((cat) => cat.slug === slug[slug.length - 1])?.name || heroTitle
    heroDesc = locale === 'en' ? subcategories.find((cat) => cat.slug_eng === slug[slug.length - 1])?.description_eng || heroDesc : subcategories.find((cat) => cat.slug === slug[slug.length - 1])?.description || heroDesc
  }
  else{
   backgroundImage = categories.find((cat) => (locale === 'en' ? cat.slug_eng : cat.slug) === slug[slug.length - 1])?.thumbnail_url || backgroundImage
    heroTitle = locale === 'en' ? categories.find((cat) => cat.slug_eng === slug[slug.length - 1])?.name_eng || heroTitle : categories.find((cat) => cat.slug === slug[slug.length - 1])?.name || heroTitle
    heroDesc = locale === 'en' ? categories.find((cat) => cat.slug_eng === slug[slug.length - 1])?.description_eng || heroDesc : categories.find((cat) => cat.slug === slug[slug.length - 1])?.description || heroDesc 
  }
  allSpeakerDynamic = locale === 'en' ? categories.find((cat) => cat.slug_eng === slug[0])?.name_eng || heroTitle : categories.find((cat) => cat.slug === slug[0])?.name || heroTitle


  const allProducts = await prismadb.product.findMany({
    where: slug.length > 0
      ? {
          allCat: {
            some: {
              category: {
                [slugField]: slugValue
              }
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
                {heroTitle}
              </h1>
              <p className="text-md text-background/70 max-w-3xl">
                {heroDesc}
              </p>
            </div>
          </div>
        </section>
        {/* Categories Section */}
        <div className="max-w-7xl mx-auto relative z-10 pt-8 pb-20 px-4 sm:px-6 lg:px-8 ">

          <div className={`${slug.length === 0 ? 'block' : 'hidden'} pt-4`}>
            <ScrollArea className="w-full whitespace-nowrap border-none">
              <div className="flex justify-center items-center fade-in-down">
                <Button asChild key={'all products'} variant="link" className={`${slug.length === 0 && 'underline font-bold'}`}>
                    <Link href={`/category`}>
                      {t('all-product')}
                    </Link>
                  </Button>
                {categories.map((cat) => (
                  <Button asChild key={cat.id} variant="link" className={`${slug.length > 0 && slug[slug.length - 1] === (locale === 'en' ? cat.slug_eng : cat.slug) && 'underline font-bold'}`}>
                    <Link href={{pathname: "/category/[...slug]", params: { slug: [locale === 'en' ? cat.slug_eng : cat.slug] }}}>
                      {locale === 'en' ? cat.name_eng : cat.name}
                    </Link>
                  </Button>
                ))}
              </div>
              <ScrollBar orientation="horizontal" />
            </ScrollArea>
          </div>

          <div className={`${slug.length === 0 ? 'hidden' : 'block'} pt-4`}>
            <ScrollArea className="w-full whitespace-nowrap border-none">
              <div className="flex justify-center items-center fade-in-down">
                  <Button asChild key={'all products'} variant="link" className={`${slug.length === 1 && 'underline font-bold'}`}>
                    <Link href={{pathname: "/category/[...slug]", params: { slug: [slug[0] ?? ''] }}}>
                    {t('all-product-dynamic')} {allSpeakerDynamic}
                    </Link>
                  </Button>
                {subcategories.map((cat) => (
                  <Button asChild key={cat.id} variant="link" className={`${slug.length > 0 && slug[slug.length - 1] === (locale === 'en' ? cat.slug_eng : cat.slug) && 'underline font-bold'}`}>
                    <Link href={{pathname: "/category/[...slug]", params: { slug: [slug[0]?? '', locale === 'en' ? cat.slug_eng : cat.slug] }}}>
                      {locale === 'en' ? cat.name_eng : cat.name}
                    </Link>
                  </Button>
                ))}
              </div>
              <ScrollBar orientation="horizontal" />
            </ScrollArea>
          </div>
          <Separator className='w-full fade-in-down mt-4 mb-8' />
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
            {allProducts.map((product, index) => (
              <ProductCard product={product} key={product.id} index={index} />
            ))}
          </div>
        </div>
    </>
  )
}