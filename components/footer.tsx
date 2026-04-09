import Image from 'next/image'
import prismadb from '@/lib/prismadb'
import { getLocale, getTranslations } from 'next-intl/server'
import Link from 'next/link';
import { Link as IntlLink } from '@/i18n/navigation';

export async function Footer() {
  const locale = await getLocale();
  const categories = await prismadb.allcategory.findMany({
    where: {
      productCategories: {
        some: {}
      },
      type: "Category"
    },
    select: {
      id: true,
      name: true,
      slug: true,
      name_eng: true,
      slug_eng: true
    }
  })
  const t_footer = await getTranslations("Navbar Footer")
  return (
    <footer className="bg-primary text-primary-foreground">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-12 pb-8">
        {/* Main Grid */}
        <div className="grid grid-cols-1 md:grid-cols-4 gap-8 mb-12">
          {/* Brand */}
          <div>
            <IntlLink href="/" className="flex items-center">
              <Image 
                src="/images/roadmaster/logo_only_roadmaster_white.webp"
                alt="Roadmaster Only Logo"
                width={180}
                height={60}
                priority
                className="h-10 w-auto"
              />  
            </IntlLink>
          </div>

          <div>
            <h4 className="font-semibold mb-4">{t_footer('products')}</h4>
            <ul className="space-y-3 text-sm">
              {categories && categories.length > 0 && categories.map((category, index) => 
                <li key={index}>
                  <IntlLink   href={{pathname: "/category/[...slug]", params: { slug: [locale === 'id' ? category.slug : category.slug_eng] }}} className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                    {locale === 'id' ? category.name : category.name_eng}
                  </IntlLink>
                </li>
              )}
            </ul>
          </div>

          {/* Company */}
          <div>
            <h4 className="font-semibold mb-4">{t_footer('company')}</h4>
            <ul className="space-y-3 text-sm">
              <li>
                <IntlLink href="/about" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  {t_footer('about')}
                </IntlLink>
              </li>
              {/* <li>
                <Link href="#" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  Blog
                </Link>
              </li>
              <li>
                <Link href="#" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  Careers
                </Link>
              </li> */}
              <li>
                <IntlLink href="/contact" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  {t_footer('contact')}
                </IntlLink>
              </li>
              <li>
                <IntlLink href="/catalogue" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  {t_footer('catalog')}
                </IntlLink>
              </li>
            </ul>
          </div>

          {/* Support */}
          {/* <div>
            <h4 className="font-semibold mb-4">Support</h4>
            <ul className="space-y-3 text-sm">
              <li>
                <Link href="#" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  Help Center
                </Link>
              </li>
              <li>
                <Link href="#" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  Warranty
                </Link>
              </li>
              <li>
                <Link href="#" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  Shipping Info
                </Link>
              </li>
              <li>
                <Link href="#" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  Returns
                </Link>
              </li>
            </ul>
          </div> */}


          {/* Social Media */}
          <div>
              <h4 className="font-semibold mb-4">{t_footer('social-media')}</h4>
              <div className="flex gap-4 space-y-3">
                <Link
                  href="https://www.instagram.com/roadmasterspeaker"
                  target="blank"
                  className="text-primary-foreground/80 hover:text-primary-foreground transition-colors"
                >
                  <svg
                    className="w-6 h-6"
                    width="32"
                    height="32"
                    viewBox="0 0 24 24"
                    fill="currentColor"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path fillRule="evenodd" clipRule="evenodd" d="M12 18C15.3137 18 18 15.3137 18 12C18 8.68629 15.3137 6 12 6C8.68629 6 6 8.68629 6 12C6 15.3137 8.68629 18 12 18ZM12 16C14.2091 16 16 14.2091 16 12C16 9.79086 14.2091 8 12 8C9.79086 8 8 9.79086 8 12C8 14.2091 9.79086 16 12 16Z" />
                    <path d="M18 5C17.4477 5 17 5.44772 17 6C17 6.55228 17.4477 7 18 7C18.5523 7 19 6.55228 19 6C19 5.44772 18.5523 5 18 5Z" />
                    <path fillRule="evenodd" clipRule="evenodd" d="M1.65396 4.27606C1 5.55953 1 7.23969 1 10.6V13.4C1 16.7603 1 18.4405 1.65396 19.7239C2.2292 20.8529 3.14708 21.7708 4.27606 22.346C5.55953 23 7.23969 23 10.6 23H13.4C16.7603 23 18.4405 23 19.7239 22.346C20.8529 21.7708 21.7708 20.8529 22.346 19.7239C23 18.4405 23 16.7603 23 13.4V10.6C23 7.23969 23 5.55953 22.346 4.27606C21.7708 3.14708 20.8529 2.2292 19.7239 1.65396C18.4405 1 16.7603 1 13.4 1H10.6C7.23969 1 5.55953 1 4.27606 1.65396C3.14708 2.2292 2.2292 3.14708 1.65396 4.27606ZM13.4 3H10.6C8.88684 3 7.72225 3.00156 6.82208 3.0751C5.94524 3.14674 5.49684 3.27659 5.18404 3.43597C4.43139 3.81947 3.81947 4.43139 3.43597 5.18404C3.27659 5.49684 3.14674 5.94524 3.0751 6.82208C3.00156 7.72225 3 8.88684 3 10.6V13.4C3 15.1132 3.00156 16.2777 3.0751 17.1779C3.14674 18.0548 3.27659 18.5032 3.43597 18.816C3.81947 19.5686 4.43139 20.1805 5.18404 20.564C5.49684 20.7234 5.94524 20.8533 6.82208 20.9249C7.72225 20.9984 8.88684 21 10.6 21H13.4C15.1132 21 16.2777 20.9984 17.1779 20.9249C18.0548 20.8533 18.5032 20.7234 18.816 20.564C19.5686 20.1805 20.1805 19.5686 20.564 18.816C20.7234 18.5032 20.8533 18.0548 20.9249 17.1779C20.9984 16.2777 21 15.1132 21 13.4V10.6C21 8.88684 20.9984 7.72225 20.9249 6.82208C20.8533 5.94524 20.7234 5.49684 20.564 5.18404C20.1805 4.43139 19.5686 3.81947 18.816 3.43597C18.5032 3.27659 18.0548 3.14674 17.1779 3.0751C16.2777 3.00156 15.1132 3 13.4 3Z" />
                  </svg>
                </Link>
                <Link
                  href="https://www.facebook.com/roadmasterspeaker"
                  target="blank"
                  className="text-primary-foreground/80 hover:text-primary-foreground transition-colors"
                >
                  <svg
                    className="w-6 h-6"
                    width="32"
                    height="32"
                    viewBox="0 0 24 24"
                    fill="currentColor"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path fillRule="evenodd" clipRule="evenodd" d="M20 1C21.6569 1 23 2.34315 23 4V20C23 21.6569 21.6569 23 20 23H4C2.34315 23 1 21.6569 1 20V4C1 2.34315 2.34315 1 4 1H20ZM20 3C20.5523 3 21 3.44772 21 4V20C21 20.5523 20.5523 21 20 21H15V13.9999H17.0762C17.5066 13.9999 17.8887 13.7245 18.0249 13.3161L18.4679 11.9871C18.6298 11.5014 18.2683 10.9999 17.7564 10.9999H15V8.99992C15 8.49992 15.5 7.99992 16 7.99992H18C18.5523 7.99992 19 7.5522 19 6.99992V6.31393C19 5.99091 18.7937 5.7013 18.4813 5.61887C17.1705 5.27295 16 5.27295 16 5.27295C13.5 5.27295 12 6.99992 12 8.49992V10.9999H10C9.44772 10.9999 9 11.4476 9 11.9999V12.9999C9 13.5522 9.44771 13.9999 10 13.9999H12V21H4C3.44772 21 3 20.5523 3 20V4C3 3.44772 3.44772 3 4 3H20Z"></path>
                  </svg>
                </Link>
              </div>
          </div>
        </div>

        {/* Divider */}
        <div className="border-t border-primary-foreground/20 my-8"></div>

        {/* Copyright */}
        <div className="text-center text-xs text-primary-foreground/60">
          <p>©{new Date().getFullYear()} Roadmaster. All rights reserved. Engineered with passion for sound.</p>
        </div>
      </div>
    </footer>
  )
}
