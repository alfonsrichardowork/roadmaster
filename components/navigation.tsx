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
            if (pathname.includes('/products') || pathname.includes('/produk')) {
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
        <div className="max-w-7xl mx-auto w-full relative z-10 px-4 sm:px-6 lg:px-8">
            <div className="flex justify-between items-center h-16 w-full z-10">
            {/* Logo */}
            <Link href="/" className="md:w-1/3 w-1/2 flex items-center hover:opacity-80 transition-opacity">
                <Image 
                src={navbarBg ? "/images/roadmaster/logo_roadmaster_black.webp" : "/images/roadmaster/logo_roadmaster_white.webp"}
                alt="Roadmaster Logo"
                width={180}
                height={60}
                priority
                className="max-h-8 w-auto"
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

            <div className='md:hidden w-1/3 flex justify-end gap-2 h-full items-center'>
                <LanguageSwitcher />
                <Button
                    onClick={() => setIsOpen(!isOpen)}
                    className={`md:hidden p-0 text-primary bg-transparent hover:bg-transparent hover:text-accent w-fit`}
                    aria-label="Toggle menu"
                >
                    {isOpen ? <X size={24} /> : <Menu size={24} className={navbarBg ? 'text-primary' : 'text-background'}/>}
                </Button>
            </div>
            </div>

            {/* Mobile Menu Backdrop */}
            {isOpen && (
                <div 
                    className="top-16 fixed inset-0 bg-black/50 md:hidden -z-10"
                    onClick={() => setIsOpen(false)}
                    style={{
                        animation: 'fadeIn 0.3s ease-in-out'
                    }}
                />
            )}

            <div className={`absolute top-16 left-0 right-0 md:hidden transition-all duration-300 ease-in-out origin-top z-40 ${
                isOpen 
                    ? 'opacity-100 scale-y-100 visible' 
                    : 'opacity-0 scale-y-95 invisible'
            }`}
            style={{
                transformOrigin: 'top',
            }}>
                <div className="bg-background p-4 rounded-b-xl">
                    <Link 
                        href="/category" 
                        className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
                        onClick={() => setIsOpen(false)}
                    >
                        {t_navbar('products')}
                    </Link>
                    <Link 
                        href="/about" 
                        className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
                        onClick={() => setIsOpen(false)}
                    >
                        {t_navbar('about')}
                    </Link>
                    <Link 
                        href="/contact" 
                        className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
                        onClick={() => setIsOpen(false)}
                    >
                        {t_navbar('contact')}
                    </Link>
                    <div className="flex gap-2 border-t border-gray-200/50 mt-4">
                        <Button 
                            className="flex-1 bg-accent text-accent-foreground hover:bg-accent/90 transition-all duration-200" 
                            onClick={() => setIsOpen(false)}
                        >
                            {t_navbar('support')}
                        </Button>
                    </div>
                </div>
            </div>

            <style jsx>{`
                @keyframes fadeIn {
                    from {
                        opacity: 0;
                    }
                    to {
                        opacity: 1;
                    }
                }
            `}</style>
        </div>
        </nav>
    )
}
