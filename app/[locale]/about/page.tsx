import DompurifyContent from '@/components/dompurifyText';
import { getTranslations } from 'next-intl/server'
import Image from 'next/image';

export default async function AboutPage() {
  const t = await getTranslations('About Us Page')
  const milestones = t.raw("milestones-desc") as string[];
  return (
    <>
        {/* <section className="pt-32 pb-20 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background">
          <div className="max-w-6xl mx-auto">
            <div className="fade-in-down space-y-6">
              <h1 className="text-5xl md:text-6xl font-bold text-primary leading-tight">
                About Roadmaster
              </h1>
              <p className="text-xl text-foreground/70 max-w-3xl">
                Crafting exceptional audio experiences since our founding, Roadmaster has been at the forefront of speaker innovation and sound engineering.
              </p>
            </div>
          </div>
        </section> */}

        {/* History Section */}
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
                  <p className="md:text-lg text-base text-foreground/70 leading-relaxed mb-4">
                    {t('desc-4')}
                  </p>
                </div>

              </div>
              <div className="fade-in-left space-y-8">
                <Image src={'/images/roadmaster/tentang-kami.webp'} alt='About Us Image' width={500} height={500}/>
              </div>
            </div>
                    
              <div className="relative mt-8">
                <div className="absolute left-8 top-14 bottom-0 w-1.5 bg-gradient-to-b from-background/20 via-primary/50 to-foreground" />
                <div className="space-y-4">
                  <h3 className="text-2xl font-bold text-primary">Milestones</h3>
                  <div className="space-y-3">
                    {milestones && milestones.length > 0 && milestones.map((val, index) => 
                      <div key={index} className="relative">
                        {/* Timeline dot */}
                        <div className="absolute left-0 top-6 z-10 flex items-center justify-center">
                          <div className="h-6 w-6 rounded-full bg-accent shadow-lg ring-4 ring-background flex items-center justify-center">
                            <div className="h-2 w-2 rounded-full bg-background" />
                          </div>
                        </div>

                        {/* Content card */}
                        <div className={`pl-20`}>
                          <div className="group rounded-xl p-6 shadow-md hover:shadow-accent/50 transition-all duration-300 backdrop-blur-sm">
                            {/* Year badge */}
                            <div className="inline-flex items-center gap-2 mb-4">
                              <div className="inline-block">
                                <span className="md:text-lg text-base font-bold text-primary">
                                  {val[0]}
                                </span>
                              </div>
                            </div>

                            <div className="space-y-3 flex items-start gap-3 group/item">
                              <span className="text-foreground/80 leading-relaxed group-hover/item:text-foreground transition-colors">
                                <DompurifyContent text={val[1] ?? ''} />
                              </span>
                            </div>
                          </div>
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              </div>

              <div className='w-full flex text-center items-center justify-center my-12 font-bold text-xl'>
                {t('tagline')}
              </div>
          </div>
        </section>
      </>
  )
}
