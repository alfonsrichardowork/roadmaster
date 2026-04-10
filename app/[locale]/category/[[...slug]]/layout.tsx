import { Metadata } from "next";
import { getLocale, getTranslations } from "next-intl/server";
import prismadb from "@/lib/prismadb";

type Props = {
  params: Promise<{ slug?: string[] }>
}

export async function generateMetadata(props: Props): Promise<Metadata> {
  const { slug = [] } = await props.params
  const locale = await getLocale()
  const product = await prismadb.allcategory.findMany({
    where: locale === 'en' ? {
      slug_eng: {
        in: slug
      } 
    }:
    {
      slug: {
        in: slug
      }
    },
    select: {
        name: true,
        slug: true,
        name_eng: true,
        slug_eng: true,
        type: true,
        thumbnail_url: true
    }
  })

  const typeOrder: Record<string, number> = {
    Category: 1,
    "Sub Category": 2,
    "Sub Sub Category": 3,
  };

  product.sort((a, b) => (typeOrder[a.type] ?? 0) - (typeOrder[b.type] ?? 0));
  const baseUrl = process.env.NEXT_PUBLIC_ROOT_URL ?? 'http://localhost:3003';
  const t = await getTranslations('Metadata category page')
  if(product && product.length > 0) {
    let finalTitle = ''
    let finalKeywords: string[] = []
    let finalRouteUrl = ''
    product.map((val, index) => {
      finalTitle = finalTitle.concat(locale === 'en' ? val.name_eng : val.name)
      if(index !== product.length - 1){
        finalTitle = finalTitle.concat(' | ')
      }
      finalKeywords.push(locale === 'en' ? val.name_eng : val.name)
      finalRouteUrl = finalRouteUrl.concat('/' + (locale === 'en' ? val.slug_eng: val.slug))
    })
    return {
      title: `${finalTitle}`,
      description: t('desc-with-category') + ' ' + `${locale === 'en' ? product[product.length - 1]?.name_eng : product[product.length - 1]?.name ?? ''}`,
      applicationName: 'Roadmaster',
      keywords: `${finalKeywords}`,
      openGraph: {
        title: `${finalTitle}`,
        description: t('desc-with-category') + ' ' + `${locale === 'en' ? product[product.length - 1]?.name_eng : product[product.length - 1]?.name ?? ''}`,
        url: locale === 'id' ? `${baseUrl}/kategori${finalRouteUrl}` : `${baseUrl}/${locale}/category${finalRouteUrl}`,
        siteName: "Roadmaster",
        images: [
          {
            url: `${baseUrl}${product[product.length - 1]?.thumbnail_url ?? ''}`,
            width: 800,
            height: 800,
            alt: product[product.length - 1]?.name ?? '',
          },
        ],
        locale: locale === 'id' ? 'id_ID' : 'en_US',
        type: "website",
      },
      twitter: {
        card: "summary_large_image",
        title: `${finalTitle}`,
        description: t('desc-with-category') + ' ' + `${locale === 'en' ? product[product.length - 1]?.name_eng : product[product.length - 1]?.name ?? ''}`,
        images: [
          {
            url: `${baseUrl}${product[product.length - 1]?.thumbnail_url ?? ''}`,
            width: 800,
            height: 800,
            alt: product[product.length - 1]?.name ?? '',
          },
        ],
      },
      alternates: {
        canonical: locale === 'id' ? `${baseUrl}/kategori${finalRouteUrl}` : `${baseUrl}/${locale}/category${finalRouteUrl}`,
        languages: {
          'id': `${baseUrl}/kategori${finalRouteUrl}`,
          'en': `${baseUrl}/${locale}/category${finalRouteUrl}`,
        },
      },
    }
  }
  else{
    return {
      title: t('title'),
      description: t('desc'),
      applicationName: 'Roadmaster',
      keywords: [t('keywords')],
      openGraph: {
        title: t('title'),
        description: t('desc'),
        url: locale === 'id' ? `${baseUrl}/kategori` : `${baseUrl}/${locale}/category`,
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
        canonical: locale === 'id' ? `${baseUrl}/kategori` : `${baseUrl}/${locale}/category`,
        languages: {
          'id': `${baseUrl}/kategori`,
          'en': `${baseUrl}/en/category`,
        },
      },
    }
  }
  
}   

export default function CategoryLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <>{children}</>;
}