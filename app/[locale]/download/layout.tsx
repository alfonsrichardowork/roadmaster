import { Metadata } from "next";
import { getLocale, getTranslations } from "next-intl/server";

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const t = await getTranslations('Metadata download page')
  const locale = await getLocale()
  return {
    title: t('title'),
    description: t('desc'),
    applicationName: 'Roadmaster',
    keywords: [t('keywords')],
    openGraph: {
      title: t('title'),
      description: t('desc'),
      url: locale === 'id' ? `${baseUrl}/unduh` : `${baseUrl}/${locale}/download`,
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
      canonical: locale === 'id' ? `${baseUrl}/unduh` : `${baseUrl}/${locale}/download`,
      languages: {
        'id': `${baseUrl}/unduh`,
        'en': `${baseUrl}/en/download`,
      },
    },
  }
}   

export default function DownloadLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <>{children}</>;
}