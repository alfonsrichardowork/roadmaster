
import DompurifyContent from '@/components/dompurifyText'
import { Button } from '@/components/ui/button'
import { Link } from '@/i18n/navigation'
import prismadb from '@/lib/prismadb'
import { getLocale, getTranslations } from 'next-intl/server'
import Image from 'next/image'

export default async function SingleNewsPage({
  params,
}: {
  params: Promise<{ newsSlug: string }>
}) {
  const locale = await getLocale();
  const { newsSlug } = await params;
  const singlenews = await prismadb.news.findFirst({
    where: locale === 'en' ? {
      slug_eng: newsSlug
    }:
    {
      slug: newsSlug
    },
  });

  const t = await getTranslations('single news page')

  const formatDate = (isoDate: string): string => {
    const date = new Date(isoDate);
    const options: Intl.DateTimeFormatOptions = {
      weekday: "long",
      day: "2-digit",
      month: "long",
      year: "numeric",
    };
    return date.toLocaleDateString(locale === 'en' ? 'en-US' : 'id-ID', options);
  };

  if (!singlenews) {
    return (
      <>
        <main className="pt-32 pb-20 px-4">
          <div className="max-w-6xl mx-auto text-center">
            <h1 className="text-4xl font-bold text-primary mb-4">{t('title-no-news')}</h1>
            <Button asChild>
              <Link href="/news">{t('button-no-news')}</Link>
            </Button>
          </div>
        </main>
      </>
    )
  }
  return (
    <>
        {/* Breadcrumb */}
        <div className="pt-24 px-4 sm:px-6 lg:px-8">
          <div className="max-w-6xl mx-auto">
            <div className="flex items-center gap-2 text-sm text-foreground">
              <Link href="/" className="hover:text-accent">Home</Link>
              <span>/</span>
              <Link href="/news" className="hover:text-accent">{t('breadcrumb')}</Link>
              <span>/</span>
              <span className="text-primary font-semibold">{locale === 'en' ? singlenews.title_eng.length > 10 ? `${singlenews.title_eng.slice(0, 10)}...` : singlenews.title_eng : singlenews.title.length > 10 ? `${singlenews.title.slice(0, 10)}...` : singlenews.title}</span>
            </div>
          </div>
        </div>

       <div className="w-full">
            <div className="flex items-center h-fit md:w-1/2 w-full py-4">
              <Image 
              src={singlenews.news_img.startsWith('/uploads/') ? `${process.env.NEXT_PUBLIC_ROOT_URL}${singlenews.news_img}` : singlenews.news_img} 
              alt={locale === 'en' ? singlenews.title_eng : singlenews.title}
              width={500}
              height={500}
              className="w-full h-fit"
              loading='lazy'/>
            </div>
            <h1 className="lg:text-3xl text-xl text-black font-bold py-2">
              {locale === 'en' ? singlenews.title_eng: singlenews.title}
            </h1>
            <h2 className="lg:text-base text-sm text-gray-500 pb-8">
              {formatDate(singlenews.event_date.toString())}
            </h2>
            <div className="text-base text-black pb-8">
              <DompurifyContent text={locale === 'en' ? singlenews.description_eng : singlenews.description} />
            </div>
          </div>
    </>
  )
}