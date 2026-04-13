import { Button } from '@/components/ui/button'
import { Link } from '@/i18n/navigation'
import { Play } from 'lucide-react'
import { getTranslations } from 'next-intl/server'

export async function Hero() {
  const t = await getTranslations("Homepage Hero")
  return (
    <section className="relative min-h-[80vh] flex items-center justify-center px-4 sm:px-6 lg:px-8 overflow-hidden pt-20">
      {/* Background with overlay */}
      <div className="absolute inset-0 z-0 overflow-hidden">

      {/* Background Video */}
      <video
        className="absolute inset-0 w-full h-full object-cover"
        autoPlay
        muted
        loop
        playsInline
        preload="metadata"
      >
        <source src="/images/roadmaster/hero.webm" type="video/webm" />
      </video>

      {/* Gradient overlay */}
      <div className="absolute inset-0 bg-gradient-to-r from-foreground/50 to-foreground/30"></div>
      <div className="absolute inset-0 bg-gradient-to-b from-transparent via-foreground/30 to-foreground/50"></div>

    </div>

      {/* Left Side Content */}
      {/* <div className="max-w-7xl mx-auto w-full relative z-10">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <div className="flex flex-col justify-center space-y-8">
            <div className="fade-in-down space-y-6">              
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
            </div>
          </div>
        </div>
      </div> */}
    </section>
  )
}
