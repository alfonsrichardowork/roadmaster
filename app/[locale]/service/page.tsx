import { getTranslations } from 'next-intl/server'

export default async function DownloadPage() {
  const t = await getTranslations('Metadata service page')
  return (
    <>
        <section className="pt-32 pb-20 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background">
          <div className="max-w-6xl mx-auto">
            <div className="fade-in-down space-y-6 text-center">
              <h1 className="text-lg md:text-2xl font-bold text-primary leading-tight">
                {t('title')}
              </h1>
            </div>
          </div>
        </section>
    </>
  )
}
