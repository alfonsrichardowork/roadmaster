import { Button } from '@/components/ui/button'
import { Link } from '@/i18n/navigation';
import prismadb from '@/lib/prismadb'
import { getTranslations } from 'next-intl/server';
import { NewsCard } from './newsCard';

export async function NewsEvents() {
  const newsData = await prismadb.news.findMany({
    take: 3,
    orderBy: {
      event_date: 'desc'
    }
  })
  const t = await getTranslations("Homepage Latest News")
  return (
    <section className="pt-24 pb-14 px-4 sm:px-6 lg:px-8 bg-linear-to-b from-background to-secondary relative overflow-hidden">
      {/* Background decorative elements */}
      <div className="absolute top-20 right-10 w-96 h-96 bg-accent/5 rounded-full blur-3xl opacity-40"></div>
      <div className="absolute bottom-20 left-10 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-30"></div>

      <div className="max-w-6xl mx-auto relative z-10">
        <div className="fade-in-down text-center space-y-6 mb-14">
          <h2 className="text-4xl lg:text-5xl font-bold text-primary">
            {t('title')}
          </h2>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {newsData.map((item, index) => (
            <NewsCard key={index} allnews={item} index={index} />
          ))}
        </div>

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
