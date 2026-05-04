import { getLocale, getTranslations } from 'next-intl/server'
import Image from 'next/image';

export default async function AboutPage() {
  const t = await getTranslations('About Us Page')
  const lang = await getLocale()
  return (
    <>
        <section className="pt-24 px-4 sm:px-6 lg:px-8 bg-white">
          <div className="max-w-6xl mx-auto">
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
              <div className="fade-in-left space-y-8">
                <div>
                  <h2 className="md:text-4xl text-2xl font-bold text-primary mb-6">{t('title')}</h2>
                  <p className="md:text-lg text-base text-foreground/70 leading-relaxed mb-4">
                    {t('desc-1')}
                  </p>
                  <p className="md:text-lg text-base text-foreground/70 leading-relaxed mb-4">
                    {t('desc-2')}
                  </p>
                  <p className="md:text-lg text-base text-foreground/70 leading-relaxed mb-4">
                    {t('desc-3')}
                  </p>
                </div>

              </div>
              <div className="fade-in-left space-y-8">
                <Image src={'/images/roadmaster/about-us.webp'} alt='About Us Image' width={500} height={500} className='lg:w-full sm:w-2/3 w-full h-full object-contain'/>
              </div>
            </div>
                    
              <div className="relative mt-8">
                {/* <div className="absolute left-8 top-14 bottom-0 w-1.5 bg-gradient-to-b from-background/20 via-primary/50 to-foreground" /> */}
                <div className="space-y-4">
                  <h3 className="text-2xl font-bold text-primary">Milestones</h3>
                  <div className="space-y-3 w-full h-full">
                    <img src={lang === 'id' ? '/images/roadmaster/milestone_indo_new.webp' : '/images/roadmaster/milestone_english_new.webp'} alt='Milestone Roadmaster' className='w-full h-full object-cover' width={1000} height={1000} />
                  </div>
                </div>
              </div>

              <div className='w-full flex text-center items-center justify-center mb-12 mt-20 font-bold text-xl'>
                <Image src={'/images/roadmaster/tagline_roadmaster_black.webp'} alt='Tagline Roadmaster' width={300} height={100} className='md:w-1/2 sm:w-2/3 w-full h-full object-contain flex items-center justify-center'/>
              </div>
          </div>
        </section>
      </>
  )
}
