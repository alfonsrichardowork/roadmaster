import { Metadata } from "next";
import { getLocale, getTranslations } from "next-intl/server";
import prismadb from "@/lib/prismadb";

type Props = {
  params: Promise<{ newsSlug?: string }>
}

export async function generateMetadata(props: Props): Promise<Metadata> {
  const { newsSlug = '' } = await props.params
  const locale = await getLocale()
  const news = await prismadb.news.findFirst({
    where: locale === 'en' ? {
      slug_eng: newsSlug
    }:
    {
      slug: newsSlug
    },
    select: {
      title: true,
      title_eng: true,
      slug: true,
      slug_eng: true,
      description: true,
      description_eng: true,
      news_img: true,
      event_date: true
    }
  })
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const t = await getTranslations('Metadata single news page')
  if(!news) {
    return {
        title: t('title-no-news'),
        description: t('desc-no-news'),
    }
  }
  return {
    title: locale === 'en' ? news.title_eng : news.title,
    description: locale === 'en' ? news.description_eng : news.description,
    applicationName: 'Roadmaster',
    keywords: locale === 'en' ? [
      news.title_eng,
      news.description_eng,
    ]:
    [
      news.title,
      news.description,
    ],
    openGraph: {
      title: locale === 'en' ? news.title_eng : news.title,
      description: locale === 'en' ? news.description_eng : news.description,
      url: locale === 'id' ? `${baseUrl}/berita/${news.slug}` : `${baseUrl}/${locale}/news/${news.slug_eng}`,
      siteName: "Roadmaster",
      images: [
        {
          url: `${baseUrl}${news.news_img}`,
          width: 800,
          height: 800,
          alt: locale === 'en' ? news.title_eng : news.title,
        },
      ],
      locale: locale === 'id' ? 'id_ID' : 'en_US',
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title: locale === 'en' ? news.title_eng : news.title,
      description: locale === 'en' ? news.description_eng : news.description,
      images: [
        {
          url: `${baseUrl}${news.news_img}`,
          width: 800,
          height: 800,
          alt: locale === 'en' ? news.title_eng : news.title,
        },
      ],
    },
    alternates: {
      canonical: locale === 'id' ? `${baseUrl}/berita/${news.slug}` : `${baseUrl}/${locale}/news/${news.slug_eng}`,
      languages: {
        'id': `${baseUrl}/berita/${news.slug}`,
        'en': `${baseUrl}/en/news/${news.slug_eng}`,
      },
    },
  }
}   

export default function SingleNewsLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <>{children}</>;
}