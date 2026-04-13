import {defineRouting} from 'next-intl/routing';
 
export const routing = defineRouting({
  // A list of all locales that are supported
  locales: ['id', 'en'],
 
  // Used when no locale matches
  defaultLocale: 'id',

  localePrefix: 'as-needed',
  alternateLinks: true,
  pathnames: {
    "/": {
      id: "/",
      en: "/"
    },
    "/products": {
      id: "/produk",
      en: "/products"
    },
    "/products/[productSlug]": {
      id: "/produk/[productSlug]",
      en: "/products/[productSlug]"
    },
    "/about": {
      id: "/tentang",
      en: "/about"
    },
    "/contact": {
      id: "/kontak",
      en: "/contact"
    },
    "/category": {
      id: "/kategori",
      en: "/category"
    },
    "/catalogue": {
      id: "/katalog",
      en: "/catalogue"
    },
    "/category/[...slug]": {
      id: "/kategori/[...slug]",
      en: "/category/[...slug]"
    },
    "/news": {
      id: "/berita",
      en: "/news"
    },
    "/news/[newsSlug]": {
      id: "/berita/[newsSlug]",
      en: "/news/[newsSlug]"
    },
    "/download": {
      id: "/unduh",
      en: "/download"
    },
    "/service": {
      id: "/servis",
      en: "/service"
    },
  }
});