import { Button } from '@/components/ui/button'
import { Link } from '@/i18n/navigation';
import prismadb from '@/lib/prismadb'
import { Calendar } from 'lucide-react'
import { getLocale, getTranslations } from 'next-intl/server';
import Image from 'next/image'

 const formatDate = (isoDate: string, locale: string): string => {
    const date = new Date(isoDate);
    const options: Intl.DateTimeFormatOptions = {
      weekday: "long",
      day: "2-digit",
      month: "long",
      year: "numeric",
    };
    return date.toLocaleDateString(locale === 'id' ? 'id-ID' : 'en-EN', options);
  };

export async function NewsEvents() {
  const locale = await getLocale();
  const newsData = await prismadb.news.findMany({
    select: {
      id: true,
      title: true,
      slug: true,
      description: true,
      title_eng: true,
      slug_eng: true,
      description_eng: true,
      event_date: true,
      news_img: true
    },
    take: 3,
    orderBy: {
      event_date: 'desc'
    }
  })
  const t = await getTranslations("Homepage Latest News")
  return (
    <section className="py-14 px-4 sm:px-6 lg:px-8 bg-linear-to-b from-background to-secondary relative overflow-hidden">
      {/* Background decorative elements */}
      <div className="absolute top-20 right-10 w-96 h-96 bg-accent/5 rounded-full blur-3xl opacity-40"></div>
      <div className="absolute bottom-20 left-10 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-30"></div>

      <div className="max-w-6xl mx-auto relative z-10">
        <div className="fade-in-down text-center space-y-6 mb-14">
          <h2 className="text-4xl lg:text-5xl font-bold text-primary">
            {t('title')}
          </h2>
          {/* <p className="text-lg text-foreground/60 max-w-2xl mx-auto">
            Stay updated with new product launches, exciting events, and exclusive promotions
          </p> */}
        </div>

        
        {/* News Cards Grid */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {newsData.map((item, index) => (
            <Link
              key={item.id}
              href={{pathname: "/news/[newsSlug]", params: { newsSlug: locale === 'id' ? item.slug : item.slug_eng }}} 
              className={`fade-in-up stagger-${(index % 3) + 1} group cursor-pointer`}
            >
              <div className="relative h-full">
                <div className="absolute -inset-0.5 bg-linear-to-br from-accent/30 to-transparent opacity-0 group-hover:opacity-100 rounded-lg transition-opacity duration-300 blur-lg"></div>

                <div className="relative bg-white rounded-lg overflow-hidden border border-border hover:shadow-2xl transition-all duration-500 h-full flex flex-col group-hover:translate-y-[-4px]">
                  {/* Card Header with emoji background */}
                  <div className="h-40 bg-gradient-to-br from-accent/20 to-accent/5 flex items-center justify-center relative overflow-hidden">
                    <div className="absolute inset-0 bg-gradient-to-t from-accent/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
                    <Image src={process.env.NEXT_PUBLIC_ROOT_URL + item.news_img} alt={locale === 'id' ? item.title: item.title_eng} width={300} height={300} className='max-h-fit w-full'/>
                  </div>

                  {/* Card Body */}
                  <div className="p-6 flex flex-col flex-1">
                    {/* <div className="flex items-center gap-2 mb-3">
                      <span className="inline-block px-3 py-1 bg-accent/10 text-accent font-semibold text-xs rounded-full">
                        {item.type}
                      </span>
                      {item.type === 'Promo' && (
                        <TrendingUp className="w-4 h-4 text-accent" />
                      )}
                    </div> */}

                    <h3 className="text-lg font-bold text-primary mb-3 group-hover:text-accent transition-colors line-clamp-2">
                      {locale === 'id' ? item.title: item.title_eng}
                    </h3>

                    <div className="flex items-center gap-2 text-sm text-foreground/60 border-t border-border pt-4">
                      <Calendar className="w-4 h-4" />
                      {formatDate(item.event_date.toString(), locale)}
                    </div>
                  </div>
                </div>
              </div>
            </Link>
          ))}
        </div>

        {/* View All Link */}
        <div className="text-center mt-14 fade-in-up">
          <Button variant="outline" className="text-primary hover:bg-primary/5 transition-all duration-300 hover:scale-105 hover:text-foreground" asChild>
            <Link href={'/news'}>
              {t('button-view-all')}
            </Link>
          </Button>
        </div>
      </div>
    </section>
  )
}
