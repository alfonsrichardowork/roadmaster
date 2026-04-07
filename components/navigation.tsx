'use client'

import { useEffect, useState } from 'react'
import {Link} from "@/i18n/navigation";
import { Button } from '@/components/ui/button'
import { Menu, X } from 'lucide-react'
import Image from 'next/image'
import { usePathname } from 'next/navigation'
import { useTranslations } from 'next-intl'
import { LanguageSwitcher } from './language-switcher';

export function Navigation() {
    
    const t_navbar = useTranslations("Navbar Footer")
    const pathname = usePathname();
    const [isOpen, setIsOpen] = useState(false)
    const [navbarBg, setNavbarBg] = useState(false);
    useEffect(() => {
        const updateNavbarBg = () => {
            if (pathname.includes('/products')) {
            setNavbarBg(true);
            return;
            }

            if (isOpen) {
            setNavbarBg(true);
            return;
            }

            setNavbarBg(window.scrollY > 0);
        };

        updateNavbarBg(); // run once on mount / pathname change

        window.addEventListener('scroll', updateNavbarBg);

        return () => {
            window.removeEventListener('scroll', updateNavbarBg);
        };
    }, [pathname, isOpen]);
    return (
        <nav className={`fixed top-0 w-full z-50 duration-300 ease-in-out ${navbarBg ? 'bg-white/95 shadow-md' : 'bg-transparent'} px-4 sm:px-6 lg:px-8`}>
        <div className="max-w-7xl mx-auto w-full relative z-10">
            <div className="flex justify-between items-center h-16 w-full">
            {/* Logo */}
            <Link href="/" className="w-1/3 flex items-center hover:opacity-80 transition-opacity">
                <Image 
                src="/images/roadmaster/logo_roadmaster.webp"
                alt="Roadmaster Logo"
                width={180}
                height={60}
                priority
                className="h-10 w-auto"
                />
            </Link>

            {/* Desktop Menu */}
            <div className={`w-1/3 hidden md:flex items-center justify-center gap-8 text-sm font-medium ${navbarBg ? 'text-primary' : 'text-white'}`}>
                <Link href="/category" className="hover:text-accent transition-colors font-medium">
                {t_navbar('products')}
                </Link>
                <Link href="/about" className="hover:text-accent transition-colors font-medium">
                {t_navbar('about')}
                </Link>
                <Link href="/contact" className="hover:text-accent transition-colors font-medium">
                {t_navbar('contact')}
                </Link>
            </div>

            {/* Desktop CTA */}
            <div className="w-1/3 hidden md:flex items-center justify-end gap-4">
                <LanguageSwitcher />
                <Button className="bg-accent text-accent-foreground hover:bg-accent/90">
                {t_navbar('support')}
                </Button>
            </div>

            {/* Mobile Menu Button */}
            <Button
                onClick={() => setIsOpen(!isOpen)}
                className={`md:hidden p-0 text-primary bg-transparent hover:bg-transparent hover:text-accent`}
                aria-label="Toggle menu"
                // variant={navbarBg ? "ghost" : "default"}
            >
                {isOpen ? <X size={24} /> : <Menu size={24} className={navbarBg ? 'text-primary' : 'text-background'}/>}
            </Button>
            </div>

            {/* Mobile Menu */}
            {isOpen && (
            <div className="md:hidden p-4 space-y-2 rounded-md">
                <Link href="/category" className="block text-foreground py-2 hover:text-accent transition-colors" onClick={() => setIsOpen(false)}>
                {t_navbar('products')}
                </Link>
                <Link href="/about" className="block text-foreground py-2 hover:text-accent transition-colors" onClick={() => setIsOpen(false)}>
                {t_navbar('about')}
                </Link>
                <Link href="/contact" className="block text-foreground py-2 hover:text-accent transition-colors" onClick={() => setIsOpen(false)}>
                {t_navbar('contact')}
                </Link>
                <div className="flex gap-2 pt-2">
                {/* <Button variant="outline" className="flex-1">
                    Shop
                </Button> */}
                <Button className="flex-1 bg-accent text-accent-foreground hover:bg-accent/90" onClick={() => setIsOpen(false)}>
                    {t_navbar('support')}
                </Button>
                </div>
            </div>
            )}
        </div>
        </nav>
    )
}
