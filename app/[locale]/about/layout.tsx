import { Metadata } from "next";
import { getLocale, getTranslations } from "next-intl/server";
import prismadb from "@/lib/prismadb";

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const t = await getTranslations('Metadata about page')
  const locale = await getLocale()
  return {
    title: t('title'),
    description: t('desc'),
    applicationName: 'Roadmaster',
    keywords: [t('keywords')],
    openGraph: {
      title: t('title'),
      description: t('desc'),
      url: locale === 'id' ? `${baseUrl}/tentang` : `${baseUrl}/${locale}/about`,
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
      canonical: locale === 'id' ? `${baseUrl}/tentang` : `${baseUrl}/${locale}/about`,
      languages: {
        'id': `${baseUrl}/tentang`,
        'en': `${baseUrl}/en/about`,
      },
    },
  }
}   

export default function AboutLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <>{children}</>;
}