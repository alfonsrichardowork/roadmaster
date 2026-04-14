import { getTranslations } from 'next-intl/server'

export default async function DownloadPage() {
  const t = await getTranslations('Metadata download page')
  return (
    <>
        <section className="pt-32 pb-20 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background">
          <div className="max-w-6xl mx-auto">
            <div className="fade-in-down space-y-6 text-center mb-12">
              <h1 className="text-xl md:text-3xl font-bold text-primary leading-tight">
                {t('title')}
              </h1>
            </div>
            
            <div className="fade-in-down space-y-6 text-center mb-8">
              <h2 className="text-lg md:text-2xl font-bold text-primary leading-tight">
                {t('manual')}
              </h2>
            </div>

            <div className="fade-in-down space-y-6 text-center">
              <h2 className="text-lg md:text-2xl font-bold text-primary leading-tight">
                {t('catalogue')}
              </h2>
            </div>
          </div>
        </section>
    </>
  )
}
