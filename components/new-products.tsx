import prismadb from '@/lib/prismadb'
import { ProductCard } from './productCard'
import { getTranslations } from 'next-intl/server'

export async function NewProducts() {
  const newproductdata = await prismadb.product.findMany({
    where: {
      new_product: true,
      isArchived: false,
    },
    select: {
      id: true,
      cover_img: true,
      name: true,
      slug: true,
      // allCat: {
      //   include: {
      //     category: true
      //   }
      // }
    },
    take: 4,
    orderBy: {
      updatedAt: 'desc'
    }
  })
  const t = await getTranslations("Homepage New Products")
  return (
    <section id="products" className="pt-24 pb-8 px-4 sm:px-6 lg:px-8 relative overflow-hidden">
      {/* Background decorative elements */}
      {/* <div className="absolute top-10 right-10 w-96 h-96 bg-accent/5 rounded-full blur-3xl opacity-40"></div>
      <div className="absolute bottom-20 left-10 w-72 h-72 bg-accent/5 rounded-full blur-3xl opacity-30"></div> */}

      <div className="max-w-7xl mx-auto relative z-10">
        <div className="text-center space-y-4 mb-14 fade-in-down">
          <h2 className="text-4xl lg:text-5xl font-bold text-foreground">
            {t('title')}
          </h2>
          {/* <p className="text-lg text-foreground/60 max-w-2xl mx-auto">
            Handpicked speakers engineered for exceptional audio performance
          </p> */}
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          {newproductdata && newproductdata.map((product, index) => (
            <ProductCard product={product} key={product.id} index={index} />
          ))}
        </div>

        {/* <div className="text-center mt-14 fade-in-up">
          <Button size="lg" variant="default" asChild>
            <Link href={`/category`}>
              {t('button-view-all')}
            </Link>
          </Button>
        </div> */}
      </div>
    </section>
  )
}
