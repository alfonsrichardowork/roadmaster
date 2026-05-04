import Image from 'next/image'
import prismadb from '@/lib/prismadb'
import { getLocale, getTranslations } from 'next-intl/server'
import Link from 'next/link';
import { Link as IntlLink } from '@/i18n/navigation';
import { allcategory } from '@prisma/client';

interface FooterProps {
  categories: allcategory[]
}

export async function Footer({ categories }: FooterProps) {
  const locale = await getLocale();
  const t_footer = await getTranslations("Navbar Footer")
  const catalogue = await prismadb.brand.findFirst({
    select: {
      catalogues: true
    }
  })
  return (
    <footer className="bg-primary text-primary-foreground">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-12 pb-8">
        {/* Main Grid */}
        <div className="grid grid-cols-1 md:grid-cols-5 gap-12 mb-12">
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
                category.type === 'Category' &&
                <li key={index}>
                  <IntlLink href={{pathname: "/category/[...slug]", params: { slug: [locale === 'id' ? category.slug : category.slug_eng] }}} className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
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
              <li>
                <IntlLink href="/contact" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  {t_footer('contact')}
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
                  href="https://www.instagram.com/roadmasterspeaker?igsh=bmlzemFyNjB1aDhz"
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
                  href="https://www.tiktok.com/@officialroadmaster?_r=1&_t=ZS-95ZhiCtb3a9"
                  target="blank"
                  className="text-primary-foreground/80 hover:text-primary-foreground transition-colors"
                >
                  <svg
                    className="w-6 h-6"
                    viewBox="0 0 24 24"
                    fill="currentColor"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path d="M19.589 6.686a4.793 4.793 0 0 1-3.77-1.882V15.3a5.3 5.3 0 1 1-5.3-5.3c.207 0 .41.012.61.035v2.63a2.67 2.67 0 1 0 2.07 2.596V2h2.62a4.8 4.8 0 0 0 3.77 2.19v2.496z"/>
                  </svg>
                </Link>
                <Link
                  href="https://youtube.com/@officialroadmasterspeaker?si=kfzQq959E0K5B6mX"
                  target="blank"
                  className="text-primary-foreground/80 hover:text-primary-foreground transition-colors"
                >
                  <svg
                    className="w-6 h-6"
                    viewBox="0 0 24 24"
                    fill="currentColor"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path d="M23.498 6.186a2.997 2.997 0 0 0-2.11-2.12C19.6 3.5 12 3.5 12 3.5s-7.6 0-9.389.566a2.997 2.997 0 0 0-2.11 2.12C0 7.982 0 12 0 12s0 4.018.501 5.814a2.997 2.997 0 0 0 2.11 2.12C4.4 20.5 12 20.5 12 20.5s7.6 0 9.389-.566a2.997 2.997 0 0 0 2.11-2.12C24 16.018 24 12 24 12s0-4.018-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                  </svg>
                </Link>
              </div>


              <h4 className="font-semibold mb-4">{t_footer('available-on')}</h4>
              <div className="flex gap-4 space-y-3">
                <Link
                  href="https://vt.tiktok.com/ZSHWM5w7U/?page=Mall"
                  target="blank"
                  className="text-primary-foreground/80 hover:text-primary-foreground transition-colors"
                >
                  <svg
                    viewBox="0 0 192 192"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="currentColor"
                    className="w-6 h-6"
                  >
                    <path
                      fillRule="evenodd"
                      clipRule="evenodd"
                      d="M96 28c-9.504 0-17.78 5.307-22.008 13.127C82.736 42.123 88.89 44 96 47.332c7.11-3.332 13.264-5.209 22.008-6.205C113.781 33.31 105.506 28 96 28Zm0-12c-15.973 0-29.568 10.117-34.754 24.28C52.932 40 42.462 40 28.53 40H28a6 6 0 0 0-6 6v124a6 6 0 0 0 6 6h92c27.614 0 50-22.386 50-50V46a6 6 0 0 0-6-6h-.531c-13.931 0-24.401 0-32.715.28C125.566 26.113 111.97 16 96 16ZM34 52.001V164h86c20.987 0 38-17.013 38-38V52.001c-18.502.009-29.622.098-37.872.966-8.692.915-13.999 2.677-21.445 6.4a6 6 0 0 1-5.366 0c-7.446-3.723-12.753-5.485-21.445-6.4-8.25-.868-19.37-.957-37.872-.966ZM50 96c0-9.941 8.059-18 18-18s18 8.059 18 18-8.059 18-18 18-18-8.059-18-18Zm18-30c-16.569 0-30 13.431-30 30 0 16.569 13.431 30 30 30 1.126 0 2.238-.062 3.332-.183l20.425 20.426a6 6 0 0 0 8.486 0l20.425-20.426c1.094.121 2.206.183 3.332.183 16.569 0 30-13.431 30-30 0-16.569-13.431-30-30-30-12.764 0-23.666 7.971-28 19.207C91.666 73.971 80.764 66 68 66Zm40.082 55.433A30.1 30.1 0 0 1 96 106.793a30.101 30.101 0 0 1-12.082 14.64L96 133.515l12.082-12.082ZM124 78c-9.941 0-18 8.059-18 18s8.059 18 18 18 18-8.059 18-18-8.059-18-18-18ZM76 96a8 8 0 1 1-16 0 8 8 0 0 1 16 0Zm48 8a8 8 0 1 0 0-16 8 8 0 0 0 0 16Z"
                    />
                  </svg>
                </Link>
                <Link
                  href="https://id.shp.ee/z53T6tQp"
                  target="_blank"
                  className="text-primary-foreground/80 hover:text-primary-foreground transition-colors"
                >
                  <svg
                    viewBox="0 0 48 48"
                    xmlns="http://www.w3.org/2000/svg"
                    className="w-6 h-6"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <path d="M33.0549 43.5h-18.11a4 4 0 0 1-3.9731-3.5367L8.3844 17.7726H39.6156L37.028 39.9633a4 4 0 0 1-3.9731 3.5367z" />
                    <path d="M13.3519 17.7726V15.16a10.66 10.66 0 0 1 21.3192 0v2.613" />
                    <path d="M19.5288 36.9825c1.1539.8654 2.3077 1.1538 4.6154 1.1538h1.1539a3.75 3.75 0 0 0 0-7.5H22.7019a3.75 3.75 0 0 1 0-7.5h1.1539c2.5961 0 3.75.2885 4.6154 1.1539" />
                  </svg>
                </Link>
              </div>
          </div>
          <div>
            <h4 className="font-semibold mb-4">{t_footer('download')}</h4>
            <ul className="space-y-3 text-sm">
              <li>
                <IntlLink href="/download" className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                  {t_footer('manual')}
                </IntlLink>
              </li>
              {catalogue && catalogue.catalogues !== '' &&
                <li>
                  <Link href={catalogue.catalogues} target='blank' className="text-primary-foreground/80 hover:text-primary-foreground transition-colors">
                    {t_footer('catalog')}
                  </Link>
                </li>
              }
            </ul>
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
