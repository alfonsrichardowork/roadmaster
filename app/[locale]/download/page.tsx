import prismadb from '@/lib/prismadb'
import { Archive, Download, FileText } from 'lucide-react'
import { getTranslations } from 'next-intl/server'
import Link from 'next/link'

const getFileExtension = (url: string): string => {
  const extension = url.split('.').pop()?.toUpperCase() || 'FILE'
  return extension
}

export default async function DownloadPage() {
  const t = await getTranslations('Metadata download page')
  const catalogue = await prismadb.brand.findFirst({
    select: {
      catalogues: true
    }
  })
  const allDatasheet = await prismadb.multipledatasheetproduct.findMany({
    select: {
      name: true,
      url: true
    }
  })
  return (
    <>
        <section className="pt-32 pb-20 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background">
          <div className="max-w-6xl mx-auto">
            <div className="fade-in-down space-y-6 text-center mb-12">
              <h1 className="text-2xl md:text-4xl font-bold text-primary leading-tight">
                {t('title')}
              </h1>
            </div>
            
            <div className="grid md:grid-cols-2 gap-8">

            {catalogue && catalogue.catalogues !== '' && (
              <div className="group fade-in-down">
                <div className="relative bg-card border border-border rounded-2xl p-4">

                  <div className="space-y-6">
                    <div>
                      <h2 className="md:text-2xl text-lg font-bold text-primary mb-2">
                        {t('catalogue')}
                      </h2>
                      <p className="text-muted-foreground md:text-base text-xs">
                        {t('catalogue-desc')}
                      </p>
                    </div>

                    {/* Catalogue Link */}
                    <div className="pt-4 border-t border-border">
                      <Link
                        href={catalogue.catalogues}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="flex items-center gap-3 p-3 rounded-lg bg-secondary/40 hover:bg-primary/10 transition-colors group/item md:text-sm text-xs"
                      >
                        <Download className="w-4 h-4 text-primary flex-shrink-0 group-hover/item:translate-y-0.5 transition-transform" />
                        <span className="text-foreground font-medium flex-1 truncate group-hover/item:text-primary transition-colors">
                          {t('catalogue-title')}
                        </span>
                        <span className="text-xs text-muted-foreground">{getFileExtension(catalogue.catalogues)}</span>
                      </Link>
                    </div>
                  </div>
                </div>
              </div>
            )}

            {allDatasheet.length > 0 && (
              <div className="group fade-in-down">
                <div className="relative bg-card border border-border rounded-2xl p-4">
              
                  <div className="space-y-6">
                    <div>
                      <h2 className="md:text-2xl text-lg font-bold text-primary mb-2">
                        {t('manual')}
                      </h2>
                      <p className="text-muted-foreground md:text-base text-xs">
                        {t('manual-desc')}
                      </p>
                    </div>

                    {/* Manuals List */}
                    <div className="space-y-3 pt-4 border-t border-border">
                      {allDatasheet.map((val, index) => (
                        <Link
                          key={index}
                          href={val.url}
                          target="_blank"
                          rel="noopener noreferrer"
                          className="flex items-center gap-3 p-3 rounded-lg bg-secondary/40 hover:bg-primary/10 transition-colors group/item md:text-sm text-xs"
                        >
                          <Download className="w-4 h-4 text-primary flex-shrink-0 group-hover/item:translate-y-0.5 transition-transform" />
                          <span className="text-foreground font-medium flex-1 truncate group-hover/item:text-primary transition-colors">
                            {val.name}
                          </span>
                          <span className="text-xs text-muted-foreground">{getFileExtension(val.url)}</span>
                        </Link>
                      ))}
                    </div>
                  </div>
                </div>
              </div>
            )}

          </div>
          </div>
        </section>
    </>
  )
}
