import { MetadataRoute } from "next";
import "dotenv/config"; // Load .env.local variables
import { writeFile } from "fs/promises";
import path from "path";
import prismadb from "./lib/prismadb";
import { routing } from "./i18n/routing";

type sitemapType = {
  url: string,
  lastModified: string,
  alternates: {
    languages: {
      id: string,
      en: string,
    },
  },
}

type Category = {
  slug: string;
  slug_eng: string;
  type: "Category" | "Sub Category" | "Sub Sub Category";
};

type Group = {
  productId: string;
  categories: Category[];
};

async function getProductsDynamicUrls() {
    let idUrls : sitemapType[] = []
    let enUrls : sitemapType[] = []
    const products = await prismadb.product.findMany({
        where:{
        isArchived: false,
        },
        select: {
        slug: true,
        }
    });
    products.map((product) => {
        let tempId: sitemapType = {
        url: `${process.env.NEXT_PUBLIC_ROOT_URL}/produk/${product.slug}`,
        lastModified: new Date().toISOString(),
        alternates: {
            languages: {
            id: `${process.env.NEXT_PUBLIC_ROOT_URL}/produk/${product.slug}`,
            en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/products/${product.slug}`,
            },
        },
        }
        let tempEn: sitemapType = {
        url: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/products/${product.slug}`,
        lastModified: new Date().toISOString(),
        alternates: {
            languages: {
            id: `${process.env.NEXT_PUBLIC_ROOT_URL}/produk/${product.slug}`,
            en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/products/${product.slug}`,
            },
        },
        }
        idUrls.push(tempId)
        enUrls.push(tempEn)
    });
    return [idUrls, enUrls];
}

async function getNewsDynamicUrls() {
  const news = await prismadb.news.findMany({
    select: {
      slug: true,
      slug_eng: true
    }
  })

  const idUrls : sitemapType[] = news.map((onenews) => ({
    url: `${process.env.NEXT_PUBLIC_ROOT_URL}/berita/${onenews.slug}`,
    lastModified: new Date().toISOString(),
    alternates: {
      languages: {
        id: `${process.env.NEXT_PUBLIC_ROOT_URL}/berita/${onenews.slug}`,
        en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/news/${onenews.slug_eng}`,
      },
    },
  }));

  const enUrls : sitemapType[] = news.map((onenews) => ({
    url: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/news/${onenews.slug_eng}`,
    lastModified: new Date().toISOString(),
    alternates: {
      languages: {
        id: `${process.env.NEXT_PUBLIC_ROOT_URL}/berita/${onenews.slug}`,
        en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/news/${onenews.slug_eng}`,
      },
    },
  }));

  return [idUrls, enUrls];
}

async function getDriversDynamicUrls() {
  let idUrls : sitemapType[] = []
  let enUrls : sitemapType[] = []
  const data = await prismadb.allproductcategory.findMany({
    select: {
      productId: true,
      category: {
        select: {
          slug: true,
          slug_eng: true,
          type: true
        }
      }
    }
  })

  const grouped = new Map<string, { slug: string; slug_eng: string; type: string }[]>()

  for (const item of data) {
    if (!grouped.has(item.productId)) {
      grouped.set(item.productId, [])
    }
    grouped.get(item.productId)!.push(item.category)
  }

  const results: string[][] = []
  const results_eng: string[][] = []

  for (const categories of grouped.values()) {
    // let category: string | null = null
    const subcats: string[] = []
    const subsubs: string[] = []
    const subcats_eng: string[] = []
    const subsubs_eng: string[] = []

    for (const c of categories) {
      if (c.type === 'Category') subcats.push(c.slug) && subcats_eng.push(c.slug_eng)
      else if (c.type === 'Sub Category') subsubs.push(c.slug) && subsubs_eng.push(c.slug_eng)
    }

    subcats.sort()
    subsubs.sort()
    subcats_eng.sort()
    subsubs_eng.sort()

    /**
     * 1. /cat/subcat
     */
    for (const subcat of subcats) {
      results.push(['kategori', subcat])
    }
    for (const subcat_eng of subcats_eng) {
      results_eng.push(['category', subcat_eng])
    }

    // /**
    //  * 4. /cat/subcat/subsubcat
    //  */
    // for (const subcat of subcats) {
    //   for (const subsub of subsubs) {
    //     results.push(['kategori', subcat, subsub])
    //   }
    // }

  }

  /**
   * Deduplicate
   */
  const unique = Array.from(
    new Set(results.map(r => JSON.stringify(r)))
  ).map(r => JSON.parse(r))
  const unique_eng = Array.from(
    new Set(results_eng.map(r => JSON.stringify(r)))
  ).map(r => JSON.parse(r))

  unique.map((product, index) => {
    let tempId: sitemapType = {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}${product.map((part: string) => `/${part}`).join('')}`,
      lastModified: new Date().toISOString(),
      alternates: {
        languages: {
          id: `${process.env.NEXT_PUBLIC_ROOT_URL}${product.map((part: string) => `/${part}`).join('')}`,
          en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en${unique_eng[index].map((part: string) => `/${part}`).join('')}`,
        },
      },
    }
    let tempEn: sitemapType = {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/en${unique_eng[index].map((part: string) => `/${part}`).join('')}`,
      lastModified: new Date().toISOString(),
      alternates: {
        languages: {
          id: `${process.env.NEXT_PUBLIC_ROOT_URL}${product.map((part: string) => `/${part}`).join('')}`,
          en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en${unique_eng[index].map((part: string) => `/${part}`).join('')}`,
        },
      },
    }
    idUrls.push(tempId)
    enUrls.push(tempEn)
  });


  // ✅ STEP 1: group by productId
  const groupedDynamic = new Map<string, Group>();

  for (const item of data) {
    if (!groupedDynamic.has(item.productId)) {
      groupedDynamic.set(item.productId, {
        productId: item.productId,
        categories: []
      });
    }

    const group = groupedDynamic.get(item.productId)!;

    // dedupe inside group
    const exists = group.categories.some(
      (c) =>
        c.slug === item.category.slug &&
        c.slug_eng === item.category.slug_eng &&
        c.type === item.category.type
    );

    if (!exists) {
      group.categories.push(item.category as Category);
    }
  }

  // ✅ STEP 2: dedupe across products (ignore productId)
  const seen = new Map<string, Group>();

  for (const item of groupedDynamic.values()) {
    const sortedCategories = [...item.categories].sort((a, b) => {
    const order = ["Category", "Sub Category", "Sub Sub Category"];
    return order.indexOf(a.type) - order.indexOf(b.type);
  });

    const key = JSON.stringify(
      sortedCategories.map(c => ({
        slug: c.slug,
        slug_eng: c.slug_eng,
        type: c.type
      }))
    );

    if (!seen.has(key)) {
      seen.set(key, {
        ...item,
        categories: sortedCategories
      });
    }
  }

  const result = Array.from(seen.values());
  result.map((product) => {
    let tempId: sitemapType = {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/kategori${product.categories.map((part) => `/${part.slug}`).join('')}`,
      lastModified: new Date().toISOString(),
      alternates: {
        languages: {
          id: `${process.env.NEXT_PUBLIC_ROOT_URL}/kategori${product.categories.map((part) => `/${part.slug}`).join('')}`,
          en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/category${product.categories.map((part) => `/${part.slug_eng}`).join('')}`,
        },
      },
    }
    let tempEn: sitemapType = {
      url: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/category${product.categories.map((part) => `/${part.slug_eng}`).join('')}`,
      lastModified: new Date().toISOString(),
      alternates: {
        languages: {
          id: `${process.env.NEXT_PUBLIC_ROOT_URL}/kategori${product.categories.map((part) => `/${part.slug}`).join('')}`,
          en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en/category${product.categories.map((part) => `/${part.slug_eng}`).join('')}`,
        },
      },
    }
    idUrls.push(tempId)
    enUrls.push(tempEn)
  })
  return [idUrls, enUrls];
}

// Generate the sitemap dynamically
export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const [productsDynamicUrlsID, productsDynamicUrlsEN] = await getProductsDynamicUrls();
  const [newsDynamicUrlsID, newsDynamicUrlsEN]= await getNewsDynamicUrls();
  const [driversDynamicUrlsID, driversDynamicUrlsEN] = await getDriversDynamicUrls();
  const allRoute = routing.pathnames
  const iterableRoutes = Object.entries(allRoute)
  .filter(([path]) => {
      const segments = path.split('/').filter(Boolean);
      return segments.length <= 1;
  }).map(([key, value]) => ({
      path: key,
      id: value.id,
      en: value.en,
  }));
  // Static URLs
  const staticUrlsID : sitemapType[] = []
  const staticUrlsEN : sitemapType[] = []
  
  iterableRoutes.map((val) => {
    staticUrlsID.push(
      {
        url: `${process.env.NEXT_PUBLIC_ROOT_URL}${val.id === '/' ? '' : val.id}`,
        lastModified: new Date().toISOString(),
        alternates: {
          languages: {
            id: `${process.env.NEXT_PUBLIC_ROOT_URL}${val.id === '/' ? '' : val.id}`,
            en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en${val.en === '/' ? '' : val.en}`,
          },
        },
      },
    )
    staticUrlsEN.push(
      {
        url: `${process.env.NEXT_PUBLIC_ROOT_URL}/en${val.en === '/' ? '' : val.en}`,
        lastModified: new Date().toISOString(),
        alternates: {
          languages: {
            id: `${process.env.NEXT_PUBLIC_ROOT_URL}${val.id === '/' ? '' : val.id}`,
            en: `${process.env.NEXT_PUBLIC_ROOT_URL}/en${val.en === '/' ? '' : val.en}`,
          },
        },
      },
    )
  })

  return [
  //@ts-ignore
  [...staticUrlsID, ...productsDynamicUrlsID, ...newsDynamicUrlsID, ...driversDynamicUrlsID],
  //@ts-ignore
  [...staticUrlsEN, ...productsDynamicUrlsEN, ...newsDynamicUrlsEN, ...driversDynamicUrlsEN],
];
}

sitemap()
  .then(async (data) => {
    // Convert the sitemap array to XML format
    for (let i = 0; i < 2; i++) { 
    const xmlContent = `
      <?xml version="1.0" encoding="UTF-8"?>
      <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
        ${((Array.isArray(data[i]) ? data[i] : [data[i]]) as any[]).map((url: any) => 
          `          <url>
            <loc>${url.url}</loc>
            <lastmod>${url.lastModified}</lastmod>
          </url>`
          )
          .join("\n")}
      </urlset>
    `.trim();

    // Define the path where to save the sitemap
    const filePath = path.join(process.cwd(), "public", `${i===0?"sitemap-id.xml":"sitemap-en.xml"}`);

    // Write to sitemap.xml file
    await writeFile(filePath, xmlContent, "utf8");
    console.log(`Sitemap saved to ${filePath}`);
    }

    const xmlContent = `
    <?xml version="1.0" encoding="UTF-8"?>
    <sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
      <sitemap>
        <loc>${process.env.NEXT_PUBLIC_ROOT_URL}/sitemap-id.xml</loc>
        <lastmod>${new Date().toISOString()}</lastmod>
      </sitemap>
      <sitemap>
        <loc>${process.env.NEXT_PUBLIC_ROOT_URL}/sitemap-en.xml</loc>
        <lastmod>${new Date().toISOString()}</lastmod>
      </sitemap>
    </sitemapindex>
    `.trim();


    // Define the path where to save the sitemap
    const filePath = path.join(process.cwd(), "public", "sitemap.xml");

    // Write to sitemap.xml file
    await writeFile(filePath, xmlContent, "utf8");
    console.log(`Sitemap saved to ${filePath}`);
  })
  .catch(console.error);