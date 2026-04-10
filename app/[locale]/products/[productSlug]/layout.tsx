import { Metadata } from "next";
import { getLocale, getTranslations } from "next-intl/server";
import prismadb from "@/lib/prismadb";

type Props = {
  params: Promise<{ productSlug?: string }>
}

export async function generateMetadata(props: Props): Promise<Metadata> {
  const { productSlug = '' } = await props.params
  const product = await prismadb.product.findFirst({
    where: {
        slug: productSlug
    },
    select: {
        name: true,
        slug: true,
        cover_img: true
    }
  })
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const t = await getTranslations('Metadata single product')
  const locale = await getLocale()
  if(!product) {
    return {
        title: t('title-no-product'),
        description: t('desc-no-product'),
    }
  }
  return {
    title: `${product.name}`,
    description: `${t('desc')} ${product.name}`,
    applicationName: 'Roadmaster',
    keywords: [
      product.name,
      product.slug,
    ],
    openGraph: {
      title: `${product.name}`,
      description: `${t('desc')} ${product.name}`,
      url: locale === 'id' ? `${baseUrl}/produk/${product.slug}` : `${baseUrl}/${locale}/products/${product.slug}`,
      siteName: "Roadmaster",
      images: [
        {
          url: `${baseUrl}${product.cover_img}`,
          width: 800,
          height: 800,
          alt: product.name,
        },
      ],
      locale: locale === 'id' ? 'id_ID' : 'en_US',
      type: "website",
    },
    twitter: {
      card: "summary_large_image",
      title: `${product.name}`,
      description: `${t('desc')} ${product.name}`,
      images: [
        {
          url: `${baseUrl}${product.cover_img}`,
          width: 800,
          height: 800,
          alt: product.name,
        },
      ],
    },
    alternates: {
      canonical: locale === 'id' ? `${baseUrl}/produk/${product.slug}` : `${baseUrl}/${locale}/products/${product.slug}`,
      languages: {
        'id': `${baseUrl}/produk/${product.slug}`,
        'en': `${baseUrl}/en/products/${product.slug}`,
      },
    },
  }
}   

export default function ProductLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <>{children}</>;
}