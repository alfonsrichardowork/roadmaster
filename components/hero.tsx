import prismadb from '@/lib/prismadb'
import SwiperHero from './swiperHero'

export async function Hero() {
  const allHero = await prismadb.hero.findMany({})
  return (
    <section className="relative min-h-screen flex items-center justify-center px-4 sm:px-6 lg:px-8 overflow-hidden pt-20">
      <div className="absolute inset-0 z-0 overflow-hidden">
        <SwiperHero slides={allHero}/>
      </div>
    </section>
  )
}
