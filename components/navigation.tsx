'use client'

import { useEffect, useState } from 'react'
import { ChevronDown, Menu, X } from 'lucide-react'
import { useLocale, useTranslations } from 'next-intl';
import { Link, usePathname } from '@/i18n/navigation';
import Image from 'next/image';
import { Button } from './ui/button';
import { LanguageSwitcher } from './language-switcher';
import { allcategory, news } from '@prisma/client';
import prismadb from '@/lib/prismadb';
import { Separator } from './ui/separator';
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from './ui/accordion';
import { ScrollArea, ScrollBar } from './ui/scroll-area';

interface NavigationProps {
  categories: allcategory[]
  allnews: { slug: string; slug_eng: string; }[]
}

export function Navigation({ categories, allnews }: NavigationProps) {
    const t_navbar = useTranslations("Navbar Footer")
    const pathname = usePathname();
    const [isOpen, setIsOpen] = useState(false)
    const [navbarBg, setNavbarBg] = useState(false);
    const locale = useLocale()

    useEffect(() => {
        const updateNavbarBg = () => {
            // if (pathname.includes('/products') || pathname.includes('/produk') || pathname.includes('/tentang')|| pathname.includes('/about') || pathname.includes('berita')|| pathname.includes('/news')) {
            if (pathname != '/' && pathname != '/category' && pathname != '/category/[...slug]') {
            setNavbarBg(true);
            return;
            }

            if (isOpen) {
            setNavbarBg(true);
            return;
            }

            setNavbarBg(window.scrollY > 0);
        };

        updateNavbarBg();

        window.addEventListener('scroll', updateNavbarBg);

        return () => {
            window.removeEventListener('scroll', updateNavbarBg);
        };
    }, [pathname, isOpen]);

  return (
    <nav className={`fixed top-0 w-full z-50 duration-300 ease-in-out ${navbarBg ? 'bg-background shadow-md' : 'bg-transparent'}`}>
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-16">
            <Link href="/" className="md:w-1/3 w-1/2 flex items-center hover:opacity-80 transition-opacity">
                <Image 
                src={navbarBg ? "/images/roadmaster/logo_roadmaster_black.webp" : "/images/roadmaster/logo_roadmaster_white.webp"}
                alt="Roadmaster Logo"
                width={180}
                height={60}
                priority
                className="max-h-10 w-auto"
                />
            </Link>

            <div className={`hidden md:flex space-x-8 items-center justify-center text-sm text-center font-semibold ${navbarBg ? 'text-primary' : 'text-background'}`}>
                <div className="relative">
                    <div
                        onClick={() => setIsOpen(!isOpen)}
                        className={`flex items-center hover:cursor-pointer`}
                        onMouseEnter={() => setIsOpen(true)}
                    >
                        Products
                        <ChevronDown
                        size={20}
                        className={`ml-1 transition-transform duration-300 ${
                            isOpen ? 'rotate-180' : ''
                        }`}
                        />
                    </div>
                </div>
                <Link href="/about" className='hover:cursor-pointer'>
                    {t_navbar('about-desktop')}
                </Link>
                <Link href="/contact" className='hover:cursor-pointer'>
                    {t_navbar('contact')}
                </Link>
                <Link href="/download" className='hover:cursor-pointer'>
                    {t_navbar('download')}
                </Link>
                <Link href="/service" className='hover:cursor-pointer'>
                    {t_navbar('service-desktop')}
                </Link>
            </div>
          
            <div className="w-1/3 hidden md:flex items-center justify-end gap-4">
                <LanguageSwitcher categories={categories} news={allnews}/>
                {/* <Button className="bg-accent text-accent-foreground hover:bg-accent/90">
                {t_navbar('support')}
                </Button> */}
            </div>

            <div className='md:hidden w-1/3 flex justify-end gap-2 h-full items-center'>
                <LanguageSwitcher categories={categories} news={allnews}/>
                <Button
                    onClick={() => setIsOpen(!isOpen)}
                    className={`md:hidden p-0 text-primary bg-transparent hover:bg-transparent hover:text-accent w-fit`}
                    aria-label="Toggle menu"
                >
                    {isOpen ? <X size={24} /> : <Menu size={24} className={navbarBg ? 'text-primary' : 'text-background'}/>}
                </Button>
            </div>
        </div>
      </div>

      {/* Full-width dropdown menu */}
      <div
        className={`fixed left-0 right-0 top-16 bg-background rounded-b-xl transition-all duration-300 ease-out origin-top z-50 border-t ${
          isOpen
            ? 'opacity-100 visible scale-y-100'
            : 'opacity-0 invisible scale-y-60'
        }`}
        style={{
          transformOrigin: 'top',
        }}
        onMouseLeave={() => setIsOpen(false)}
      >
        <div className="max-w-4xl mx-auto py-8">
            <div className="md:grid hidden md:grid-cols-3 gap-8">
                {categories.length > 0 ? (
                    categories.map((val, index) => (
                        val.type === 'Category' &&
                        <Link
                            key={index}
                            href={{
                                pathname: "/category/[...slug]",
                                params: { slug: [locale === "id" ? val.slug : val.slug_eng] },
                            }}
                            className="col-span-1 block w-full hover:scale-105 duration-300 ease-in-out hover:underline" onClick={() => setIsOpen(false)}
                            >
                            <div className="flex items-center justify-center">
                                <div className="w-[200px] h-[200px] rounded-full overflow-hidden">
                                <Image
                                    src={process.env.NEXT_PUBLIC_ROOT_URL + val.thumbnail_url}
                                    alt={locale === "en" ? val.name_eng : val.name}
                                    width={200}
                                    height={200}
                                    className="object-cover w-full h-full"
                                />
                                </div>
                            </div>

                            <div className="flex items-center justify-center text-base font-semibold mt-2 text-foreground">
                                {locale === "en" ? val.name_eng : val.name}
                            </div>
                        </Link>
                    ))
                )
                :
                    <div className='col-span-3 flex items-center justify-center h-full w-full'>No Categories Available</div>
                }
            </div>
            <div className={`md:hidden block px-4 sm:px-6 text-base text-start font-semibold ${navbarBg ? 'text-primary' : 'text-background'}`}>
                <div className='pb-4'>
                    <Accordion
                        type="single"
                        collapsible
                        defaultValue=""
                        className="max-w-full"
                    >
                        <AccordionItem value="product" className='border-none'>
                            <AccordionTrigger className='p-0 text-base font-semibold'>
                                {t_navbar('products')}
                            </AccordionTrigger>
                            <AccordionContent className='border-y py-2'>
                            <ScrollArea className="h-full w-full">
                                <div className="flex gap-6 w-max p-4">
                                    {categories.length > 0 ? (
                                    categories.map((val, index) => (
                                        val.type === 'Category' &&
                                        <Link
                                        key={index}
                                        href={{
                                            pathname: "/category/[...slug]",
                                            params: { slug: [locale === "id" ? val.slug : val.slug_eng] },
                                        }}
                                        onClick={() => setIsOpen(false)}
                                        >
                                        <div className="flex items-center justify-center">
                                            <div className="w-[150px] h-[150px] rounded-full overflow-hidden">
                                            <Image
                                                src={process.env.NEXT_PUBLIC_ROOT_URL + val.thumbnail_url}
                                                alt={locale === "en" ? val.name_eng : val.name}
                                                width={200}
                                                height={200}
                                                className="object-cover w-full h-full"
                                            />
                                            </div>
                                        </div>

                                        <div className="flex items-center justify-center text-sm font-semibold mt-2">
                                            {locale === "en" ? val.name_eng : val.name}
                                        </div>
                                        </Link>
                                    ))
                                    ) : (
                                    <div className="flex items-center justify-center h-full w-full">
                                        No Categories Available
                                    </div>
                                    )}
                                </div>

                                <ScrollBar orientation="horizontal" />
                                </ScrollArea>
                                {/* <Link href={'/category'} className='w-full flex items-center justify-center text-sm font-semibold mt-2 mb-4' onClick={() => setIsOpen(false)}>
                                    {t_navbar('view-all-product')}
                                </Link> */}
                            </AccordionContent>
                        </AccordionItem>
                    </Accordion>
                </div>
                <div className='pb-4'>
                    <Link href="/about" className='hover:cursor-pointer hover:underline' onClick={() => setIsOpen(false)}>
                        {t_navbar('about')}
                    </Link>
                </div>
                <div className='pb-4'>
                    <Link href="/contact" className='hover:cursor-pointer hover:underline' onClick={() => setIsOpen(false)}>
                        {t_navbar('contact')}
                    </Link>
                </div>
                <div className='pb-4'>
                    <Link href="/download" className='hover:cursor-pointer hover:underline' onClick={() => setIsOpen(false)}>
                        {t_navbar('download')}
                    </Link>
                </div>
                <div>
                    <Link href="/service" className='hover:cursor-pointer hover:underline' onClick={() => setIsOpen(false)}>
                        {t_navbar('service')}
                    </Link>
                </div>
            </div>
            {/* <div className='md:block hidden'>
                <Separator className='my-6'/>
                <Link href={'/category'} className='w-full flex items-center justify-center text-base font-semibold hover:scale-105 hover:underline' onClick={() => setIsOpen(false)}>
                    {t_navbar('view-all-product')}
                </Link>
            </div> */}
        </div>
      </div>

      {/* Overlay to close menu */}
      {isOpen && (
        <div
          className="fixed inset-0 bg-black/40 top-16 z-40"
          onClick={() => setIsOpen(false)}
        />
      )}
    </nav>
  )
}
