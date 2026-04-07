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
const font = Inter({ subsets: ['latin'] })

export async function generateMetadata(): Promise<Metadata> {
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  return {
    title: {
      template: '%s | Roadmaster',
      default: 'Roadmaster | Audio Berkualitas Tinggi untuk Hiburan Anda',
    },
    description: 'Roadmaster menawarkan perangkat audio dengan kualitas suara luar biasa. Nikmati musik, film, dan hiburan lainnya di mana saja dengan desain elegan dan kemudahan penggunaan. Temukan pilihan yang sesuai dengan kebutuhan Anda di Roadmaster.',
    keywords: 'audio, hiburan, kualitas suara, roadmaster, speaker party',
    openGraph: {
      title: 'Roadmaster | Audio Berkualitas Tinggi untuk Hiburan Anda',
      description: 'Roadmaster menawarkan perangkat audio dengan kualitas suara luar biasa. Nikmati musik, film, dan hiburan lainnya di mana saja dengan desain elegan dan kemudahan penggunaan. Temukan pilihan yang sesuai dengan kebutuhan Anda di Roadmaster.',
      url: `${baseUrl}`,
      siteName: 'Roadmaster',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
          width: 1200,
          height: 630,
          alt: 'Roadmaster Logo',
        },
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
          width: 800,
          height: 800,
          alt: 'Roadmaster Logo',
        },
      ],
      locale: 'id_ID',
      type: 'website',
    },
    twitter: {
      card: 'summary_large_image',
      title: 'Roadmaster | Audio Berkualitas Tinggi untuk Hiburan Anda',
      description: 'Roadmaster menawarkan perangkat audio dengan kualitas suara luar biasa. Nikmati musik, film, dan hiburan lainnya di mana saja dengan desain elegan dan kemudahan penggunaan. Temukan pilihan yang sesuai dengan kebutuhan Anda di Roadmaster.',
      images: [
        {
          url: `${baseUrl}/images/roadmaster/logo_roadmaster.webp`,
          width: 800,
          height: 800,
          alt: 'Roadmaster Logo',
        }
      ],
    },
    alternates: {
      canonical: `${baseUrl}`,
    },
    robots: {
      index: true,
      follow: true,
      googleBot: {
        index: true,
        follow: true,
      },
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
                <main className="min-h-screen bg-background">
                    <Navigation />
                        {children}
                    <Footer />
                </main>
            </NextIntlClientProvider>
        </body>
        <GoogleAnalytics gaId="XYZ" />
        </html>
    )
}