import { Footer } from "@/components/footer"
import { Navigation } from "@/components/navigation"
import { routing } from "@/i18n/routing";
import { Metadata } from "next";
import {hasLocale, NextIntlClientProvider} from 'next-intl';
import { Inter } from "next/font/google";
import Head from "next/head";
import Link from "next/link";
import { notFound } from "next/navigation";
import { GoogleAnalytics } from '@next/third-parties/google'
import prismadb from "@/lib/prismadb";
import { getLocale, getTranslations } from "next-intl/server";
const font = Inter({ subsets: ['latin'] })

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const t = await getTranslations('Metadata homepage')
  const locale = await getLocale()
  return {
    title: {
      template: '%s | Roadmaster',
      default: t('tagline'),
    },
    description: t('desc'),
    keywords: [t('keywords')],
    openGraph: {
      title: t('tagline'),
      description: t('desc'),
      url: locale === 'id' ? `${baseUrl}` : `${baseUrl}/${locale}`,
      siteName: 'Roadmaster',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster_white.webp`,
          width: 1200,
          height: 630,
          alt: 'Roadmaster Logo',
        },
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster_white.webp`,
          width: 800,
          height: 800,
          alt: 'Roadmaster Logo',
        },
      ],
      locale: locale === 'id' ? 'id_ID' : 'en_US',
      type: 'website',
    },
    twitter: {
      card: 'summary_large_image',
      title: t('tagline'),
      description: t('desc'),
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster_white.webp`,
          width: 800,
          height: 800,
          alt: 'Roadmaster Logo',
        }
      ],
    },
    alternates: {
      canonical: locale === 'id' ? `${baseUrl}` : `${baseUrl}/${locale}`,
      languages: {
        'id': `${baseUrl}`,
        'en': `${baseUrl}/en`,
      },
    },
    robots: {
      index: true,
      follow: true,
      googleBot: {
        index: true,
        follow: true,
      },
    },
    icons: {
      icon: `${baseUrl}/favicon.ico`,
      shortcut: `${baseUrl}/favicon.ico`,
    },
  }
}

export default async function HomeLayout({
  children,
  params
}: {
  children: React.ReactNode;
  params: Promise<{ locale: string }>;
}) {
    const { locale } = await params;
    if (!hasLocale(routing.locales, locale)) {
      notFound();
    }
    const categoriesData = await prismadb.allcategory.findMany({
      where: {
      productCategories: {
          some: {}
      }
      }
    })
    const newsData = await prismadb.news.findMany({
      select: {
        slug: true,
        slug_eng: true
      }
    })
    return (
        <html lang={locale}>
        <Head>
            <Link
            rel="preload"
            href="/images/roadmaster/navbarbg.webp"
            as="image"
            />
        </Head>
        <body className={`${font.className || ''} overflow-x-hidden`}>
            <NextIntlClientProvider>
                <main className="min-h-screen bg-background text-foreground">
                  <Navigation categories={categoriesData} allnews={newsData}/>
                  {children}
                  <Footer categories={categoriesData} />
                </main>
            </NextIntlClientProvider>
        </body>
        <GoogleAnalytics gaId="XYZ" />
        </html>
    )
}