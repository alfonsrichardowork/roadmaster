import { Button } from '@/components/ui/button'
import { ArrowRight } from 'lucide-react'

interface Category {
  id: number
  title: string
  description: string
  emoji: string
  color: string
}

const categories: Category[] = [
  {
    id: 1,
    title: 'Wireless Speakers',
    description: 'Freedom in sound. Exceptional audio without the cables.',
    emoji: '📡',
    color: 'from-blue-500/10 to-blue-500/5',
  },
  {
    id: 2,
    title: 'Portable Speakers',
    description: 'Take your music everywhere with premium sound quality.',
    emoji: '🎒',
    color: 'from-green-500/10 to-green-500/5',
  },
  {
    id: 3,
    title: 'Studio Monitors',
    description: 'Professional-grade audio for creators and engineers.',
    emoji: '🎙️',
    color: 'from-purple-500/10 to-purple-500/5',
  },
]

export function Categories() {
  return (
    <section className="py-24 px-4 sm:px-6 lg:px-8 bg-white relative overflow-hidden">
      {/* Background decorative elements */}
      <div className="absolute -top-40 -right-40 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-50"></div>
      <div className="absolute -bottom-40 -left-40 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-40"></div>

      <div className="max-w-7xl mx-auto relative z-10">
        <div className="text-center space-y-4 mb-20 fade-in-down">
          <h2 className="text-4xl lg:text-5xl font-bold text-primary">
            Shop by Category
          </h2>
          <p className="text-lg text-foreground/60 max-w-2xl mx-auto">
            Find the perfect speaker for your lifestyle
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {categories.map((category, index) => (
            <div key={category.id} className={`fade-in-up stagger-${index + 1} group`}>
              <div className="relative h-full">
                {/* Glowing border on hover */}
                <div className="absolute -inset-1 bg-gradient-to-br from-accent/30 to-transparent opacity-0 group-hover:opacity-100 rounded-xl transition-opacity duration-300 blur-lg"></div>
                
                <div className="relative rounded-xl border border-border overflow-hidden bg-white hover:border-accent transition-all duration-500 h-full flex flex-col group-hover:shadow-2xl">
                  {/* Category Header with enhanced animation */}
                  <div className={`h-48 bg-gradient-to-br ${category.color} flex items-center justify-center relative overflow-hidden`}>
                    {/* Animated background */}
                    <div className="absolute inset-0 bg-gradient-to-t from-accent/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
                    
                    <div className="relative z-10">
                      <span className="text-7xl inline-block group-hover:scale-125 group-hover:rotate-6 transition-transform duration-500 origin-center">
                        {category.emoji}
                      </span>
                    </div>
                  </div>

                  {/* Category Info */}
                  <div className="p-8 flex flex-col flex-1">
                    <h3 className="text-2xl font-bold text-primary mb-2 group-hover:text-accent transition-colors duration-300">
                      {category.title}
                    </h3>
                    <p className="text-foreground/60 mb-8 flex-1 leading-relaxed">
                      {category.description}
                    </p>
                    
                    <Button 
                      variant="ghost" 
                      className="text-accent group/btn hover:text-accent p-0 justify-start w-fit transition-all duration-300 hover:translate-x-2"
                    >
                      Explore
                      <ArrowRight size={18} className="ml-2 group-hover/btn:translate-x-1 transition-transform" />
                    </Button>
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
