import { Card } from '@/components/ui/card'
import { Star } from 'lucide-react'

interface Testimonial {
  id: number
  name: string
  role: string
  content: string
  rating: number
  avatar: string
}

const testimonials: Testimonial[] = [
  {
    id: 1,
    name: 'Sarah Mitchell',
    role: 'Music Enthusiast',
    content:
      'The sound quality is absolutely incredible. These speakers have completely transformed my listening experience. The clarity and bass response are unmatched.',
    rating: 5,
    avatar: '👩‍🎤',
  },
  {
    id: 2,
    name: 'Marcus Chen',
    role: 'Audio Engineer',
    content:
      'As a professional, I have high standards. Roadmaster speakers exceeded all my expectations. The detail and precision are phenomenal.',
    rating: 5,
    avatar: '🎧',
  },
  {
    id: 3,
    name: 'Elena Rodriguez',
    role: 'Podcast Host',
    content:
      'Perfect for recording and monitoring. The build quality is excellent, and they look stunning in any setup. Highly recommended!',
    rating: 4,
    avatar: '🎙️',
  },
  {
    id: 4,
    name: 'James Wilson',
    role: 'Gamer',
    content:
      'Gaming with these speakers is a whole new experience. The immersive sound creates an incredible atmosphere. Best investment ever!',
    rating: 5,
    avatar: '🎮',
  },
]

export function Testimonials() {
  return (
    <section className="py-24 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-background to-secondary relative overflow-hidden">
      {/* Background decorative elements */}
      <div className="absolute top-20 left-20 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-40"></div>
      <div className="absolute bottom-10 right-10 w-96 h-96 bg-accent/5 rounded-full blur-3xl opacity-30"></div>

      <div className="max-w-7xl mx-auto relative z-10">
        <div className="text-center space-y-4 mb-20 fade-in-down">
          <h2 className="text-4xl lg:text-5xl font-bold text-primary">
            Loved by Audio Enthusiasts
          </h2>
          <p className="text-lg text-foreground/60 max-w-2xl mx-auto">
            See what our customers have to say about their Roadmaster experience
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          {testimonials.map((testimonial, index) => (
            <div key={testimonial.id} className={`fade-in-up stagger-${(index % 4) + 1}`}>
              <div className="group relative h-full">
                {/* Gradient border effect on hover */}
                <div className="absolute -inset-0.5 bg-gradient-to-br from-accent/20 to-transparent opacity-0 group-hover:opacity-100 rounded-lg transition-opacity duration-300"></div>
                
                <Card className="relative p-8 bg-white border-border hover:shadow-2xl transition-all duration-500 h-full flex flex-col group-hover:translate-y-[-4px]">
                  {/* Rating with animation */}
                  <div className="flex gap-1 mb-6">
                    {[...Array(5)].map((_, i) => (
                      <Star
                        key={i}
                        size={18}
                        className={`transition-transform duration-300 ${
                          i < testimonial.rating 
                            ? 'fill-accent text-accent group-hover:scale-125' 
                            : 'text-border'
                        }`}
                        style={{
                          transitionDelay: `${i * 50}ms`
                        }}
                      />
                    ))}
                  </div>

                  {/* Quote */}
                  <p className="text-foreground/80 mb-8 leading-relaxed italic text-sm flex-1">
                    &quot;{testimonial.content}&quot;
                  </p>

                  {/* Divider */}
                  <div className="h-px bg-gradient-to-r from-accent/20 to-transparent mb-6"></div>

                  {/* Author with hover effect */}
                  <div className="flex items-center gap-4">
                    <div className="relative">
                      <div className="absolute -inset-2 bg-accent/20 rounded-full opacity-0 group-hover:opacity-100 transition-opacity duration-300 blur"></div>
                      <span className="relative text-4xl block">{testimonial.avatar}</span>
                    </div>
                    <div>
                      <p className="font-semibold text-primary group-hover:text-accent transition-colors duration-300">{testimonial.name}</p>
                      <p className="text-sm text-foreground/60">{testimonial.role}</p>
                    </div>
                  </div>
                </Card>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
