import { Button } from '@/components/ui/button'
import { Link } from '@/i18n/navigation'
import { Play } from 'lucide-react'
import { getTranslations } from 'next-intl/server'

export async function Hero() {
  const t = await getTranslations("Homepage Hero")
  return (
    <>
    <section className="relative min-h-[80vh] flex items-center justify-center px-4 sm:px-6 lg:px-8 overflow-hidden pt-20">
      {/* Background with overlay */}
      <div 
        className="absolute inset-0 z-0"
        style={{
          backgroundImage: 'url(/images/roadmaster/hero-bg.webp)',
          backgroundSize: 'cover',
          backgroundPosition: 'top',
          backgroundAttachment: 'fixed',
        }}
      >
        {/* Gradient overlay */}
        <div className="absolute inset-0 bg-linear-to-r from-foreground/50 to-foreground/30"></div>
        <div className="absolute inset-0 bg-linear-to-b from-transparent via-foreground/30 to-foreground"></div>
        
        {/* Animated gradient accent */}
        <div className="absolute top-0 right-0 w-96 h-96 bg-accent/20 rounded-full blur-3xl opacity-40 animate-pulse"></div>
        <div className="absolute bottom-20 left-10 w-72 h-72 bg-accent/10 rounded-full blur-3xl opacity-30"></div>
      </div>

      {/* Content */}
      <div className="max-w-7xl mx-auto w-full relative z-10">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          {/* Left Content */}
          <div className="flex flex-col justify-center space-y-8">
            <div className="fade-in-down space-y-6">
              {/* <div className="inline-block">
                <span className="text-sm font-semibold text-accent bg-accent/20 px-4 py-2 rounded-full backdrop-blur-sm">
                  ✓ Premium Audio Quality
                </span>
              </div> */}
              
              <h1 className="text-3xl md:text-4xl lg:text-5xl font-bold text-white leading-tight">
                {t('title')}
              </h1>
              
              <p className="text-lg text-gray-200 leading-relaxed max-w-lg">
                {t('desc')}
              </p>

              <div className="flex flex-col sm:flex-row gap-4 pt-6 fade-in-up">
                <Button size="lg" className="w-full bg-accent text-white hover:bg-accent/90 transition-all duration-300 transform hover:scale-105" asChild>
                  <Link href="/category" className="w-full sm:w-auto">
                    {t('button')}
                  </Link>
                </Button>
                <Button size="lg" variant="outline" className="w-full sm:w-auto border-white/30 text-foreground hover:text-white hover:bg-white/10 backdrop-blur-sm transition-all duration-300">
                  <Play className="w-4 h-4 mr-2" />
                  {t('demo')}
                </Button>
              </div>

              {/* <div className="grid grid-cols-3 gap-6 pt-8 fade-in-up">
                <div className="group">
                  <p className="font-bold text-accent text-3xl group-hover:scale-110 transition-transform duration-300">10+</p>
                  <p className="text-sm text-gray-300">Years Experience</p>
                </div>
                <div className="group">
                  <p className="font-bold text-accent text-3xl group-hover:scale-110 transition-transform duration-300">50K+</p>
                  <p className="text-sm text-gray-300">Happy Customers</p>
                </div>
                <div className="group">
                  <p className="font-bold text-accent text-3xl group-hover:scale-110 transition-transform duration-300">4.8/5</p>
                  <p className="text-sm text-gray-300">Average Rating</p>
                </div>
              </div> */}
            </div>
          </div>

          {/* Right Visual - Product Display */}
          {/* <div className="flex items-center justify-center">
            <div className="relative w-full max-w-md slide-in-right">
              <div className="absolute -inset-4 bg-gradient-to-br from-accent/40 to-accent/10 rounded-3xl blur-2xl opacity-75 animate-pulse"></div>
              
              <div className="relative bg-white/10 backdrop-blur-xl rounded-2xl p-8 border border-white/20 shadow-2xl">
                <div className="text-center space-y-6">
                  <div className="flex justify-center">
                    <div className="relative">
                      <div className="absolute -inset-6 bg-accent/30 rounded-full blur-lg animate-pulse"></div>
                      <div className="relative w-40 h-40 bg-gradient-to-br from-accent/30 to-accent/10 rounded-full flex items-center justify-center">
                        <span className="text-8xl float">🔊</span>
                      </div>
                    </div>
                  </div>
                  
                  <div>
                    <h3 className="text-2xl font-bold text-white">Studio Pro</h3>
                    <p className="text-accent text-sm font-semibold mt-1">Premium Wireless Speaker</p>
                  </div>

                  <div className="flex flex-wrap gap-2 justify-center">
                    <span className="px-3 py-1 bg-accent/20 text-white text-xs font-semibold rounded-full border border-accent/40">
                      360° Sound
                    </span>
                    <span className="px-3 py-1 bg-accent/20 text-white text-xs font-semibold rounded-full border border-accent/40">
                      40hr Battery
                    </span>
                  </div>

                  <div className="flex items-center justify-center gap-2">
                    <span className="text-xl text-accent">★★★★★</span>
                    <span className="text-sm text-gray-300">4.9 (340 reviews)</span>
                  </div>

                  <div className="pt-4 border-t border-white/10">
                    <p className="text-3xl font-bold text-white">$299.99</p>
                  </div>
                </div>
              </div>

              <div className="absolute -top-8 -right-8 w-20 h-20 bg-accent/20 rounded-lg blur-lg opacity-60 animate-bounce"></div>
              <div className="absolute -bottom-8 -left-8 w-16 h-16 bg-accent/10 rounded-full blur-lg opacity-40"></div>
            </div>
          </div> */}
        </div>
      </div>
    </section>
    <section className="relative min-h-[10vh] flex items-center justify-center overflow-hidden bg-foreground">
    </section>
    </>
  )
}
