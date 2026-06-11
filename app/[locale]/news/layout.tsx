import { Metadata } from "next";
import { getTranslations, setRequestLocale } from "next-intl/server";

export async function generateMetadata({
    params
  }: {
    params: Promise<{locale: string}>
  }): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const {locale} = await params;
  setRequestLocale(locale);
   const t = await getTranslations({
    locale,
    namespace: 'Metadata all news page'
  });
  return {
    title: t('title'),
    description: t('desc'),
    applicationName: 'Roadmaster',
    keywords: [t('keywords')],
    openGraph: {
      title: t('title'),
      description: t('desc'),
      url: locale === 'id' ? `${baseUrl}/berita` : `${baseUrl}/${locale}/news`,
      siteName: "Roadmaster",
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster_white.webp`,
          width: 800,
          height: 800,
          alt: 'Roadmaster Logo',
        },
      ],
      locale: locale === 'id' ? 'id_ID' : 'en_US',
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title: t('title'),
      description: t('desc'),
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster_white.webp`,
          width: 800,
          height: 800,
          alt: 'Roadmaster Logo',
        },
      ],
    },
    alternates: {
      canonical: locale === 'id' ? `${baseUrl}/berita` : `${baseUrl}/${locale}/news`,
      languages: {
        'id': `${baseUrl}/berita`,
        'en': `${baseUrl}/en/news`,
      },
    },
  }
}   

export default function NewsLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <>{children}</>;
}