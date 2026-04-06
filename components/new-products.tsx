import { Button } from '@/components/ui/button'
import prismadb from '@/lib/prismadb'
import Image from 'next/image'
import Link from 'next/link'

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
            <div
              key={product.id}
              className={`fade-in-up stagger-${(index % 4) + 1} group relative`}
            >
              {/* Card with gradient border effect */}
              <div className="absolute -inset-0.5 bg-gradient-to-br from-accent/30 to-transparent opacity-0 group-hover:opacity-100 rounded-lg transition-opacity duration-300 blur-sm"></div>
              
              <div className="relative bg-white rounded-lg shadow-md hover:shadow-2xl transition-all duration-500 overflow-hidden flex flex-col h-full hover:translate-y-[-8px]">
                {/* Product Image Area with animation */}
                <div className="relative h-60 bg-gradient-to-br from-accent/20 to-accent/5 flex items-center justify-center overflow-hidden">
                  {/* Animated background gradient */}
                  <div className="absolute inset-0 bg-gradient-to-t from-accent/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
                  
                  <div className="relative z-10 group-hover:scale-125 transition-transform duration-500">
                    <Image src={process.env.NEXT_PUBLIC_ROOT_URL + product.cover_img} alt={product.name} width={300} height={300} className='max-h-fit w-full'/>
                  </div>
                </div>

                {/* Product Info */}
                <div className="p-6 flex flex-col flex-1">
                  <p className="text-xs text-accent font-semibold uppercase tracking-wider line-clamp-1 mb-4">
                    {product.allCat && product.allCat.length > 0 ? product.allCat.map((cat) => cat.name).join(' - ') : 'Uncategorized'}
                  </p>
                  <h3 className="text-lg font-bold text-primary mb-3 group-hover:text-accent transition-colors duration-300 line-clamp-1">
                    {product.name}
                  </h3>

                  {/* Rating */}
                  {/* <div className="flex items-center gap-2 mb-4">
                    <div className="flex gap-0.5">
                      {[...Array(5)].map((_, i) => (
                        <Star
                          key={i}
                          size={16}
                          className={i < Math.floor(product.rating) ? 'fill-accent text-accent' : 'text-border'}
                        />
                      ))}
                    </div>
                    <span className="text-sm text-foreground/60">
                      {product.rating} ({product.reviews})
                    </span>
                  </div> */}

                  {/* Price */}
                  {/* <div className="mb-6 mt-auto">
                    <p className="text-3xl font-bold text-primary">${product.price}</p>
                  </div> */}

                  {/* Button with animation */}
                  <Button className="w-full bg-primary text-primary-foreground hover:bg-primary/90 transition-all duration-300 transform hover:scale-105 active:scale-95" asChild>
                    <Link href={`/products/${product.slug}`}>
                      View Details
                    </Link>
                  </Button>
                </div>
              </div>
            </div>
          ))}
        </div>

        <div className="text-center mt-14 fade-in-up">
          <Button size="lg" variant="outline" className="text-primary hover:bg-primary-foreground/50 hover:text-accent hover:border-none transition-all duration-300 hover:scale-105" asChild>
            <Link href={`/products`}>
              View All Products
            </Link>
          </Button>
        </div>
      </div>
    </section>
  )
}
