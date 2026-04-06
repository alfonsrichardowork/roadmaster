import { Button } from '@/components/ui/button'
import prismadb from '@/lib/prismadb'
import Link from 'next/link'
import { ProductCard } from './productCard'

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
      allCat: true
    },
    take: 4,
    orderBy: {
      updatedAt: 'desc'
    }
  })
  return (
    <section id="products" className="pt-24 px-4 sm:px-6 lg:px-8 bg-linear-to-b from-foreground to-foreground/30 relative overflow-hidden">
      {/* Background decorative elements */}
      {/* <div className="absolute top-10 right-10 w-96 h-96 bg-accent/5 rounded-full blur-3xl opacity-40"></div>
      <div className="absolute bottom-20 left-10 w-72 h-72 bg-accent/5 rounded-full blur-3xl opacity-30"></div> */}

      <div className="max-w-7xl mx-auto relative z-10">
        <div className="text-center space-y-4 mb-14 fade-in-down">
          <h2 className="text-4xl lg:text-5xl font-bold text-background">
            Our Newest Collections
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

        <div className="text-center mt-14 fade-in-up">
          <Button size="lg" variant="outline" className="text-primary hover:bg-primary-foreground/50 hover:text-accent hover:border-none transition-all duration-300 hover:scale-105" asChild>
            <Link href={`/category`}>
              View All Products
            </Link>
          </Button>
        </div>
      </div>
    </section>
  )
}
