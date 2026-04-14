import { getTranslations } from 'next-intl/server'

export async function Hero() {
  const t = await getTranslations("Homepage Hero")
  return (
    <section className="relative min-h-screen flex items-center justify-center px-4 sm:px-6 lg:px-8 overflow-hidden pt-20">
      {/* Background with overlay */}
      <div className="absolute inset-0 z-0 overflow-hidden">

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
    </section>
  )
}
