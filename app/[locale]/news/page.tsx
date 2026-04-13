import { NewsCard } from '@/components/newsCard';
import prismadb from '@/lib/prismadb';
import { getTranslations } from 'next-intl/server'

export default async function AllNewsPage() {
  const t = await getTranslations('All News Page')
  const newsData = await prismadb.news.findMany({
    orderBy: {
      event_date: 'desc'
    }
  })
  return (
    <section className="pt-24 pb-8 px-4 sm:px-6 lg:px-8 bg-white">
      <div className="max-w-6xl mx-auto">
        <h1 className='pb-8 w-full justify-center flex font-bold md:text-2xl text-lg'>
            {t('title')}
        </h1>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
            {newsData.map((item, index) => (
              <NewsCard key={index} allnews={item} index={index} />
            ))}
        </div>
      </div>
    </section>
  )
}
