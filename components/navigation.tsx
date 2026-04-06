'use client'

import { useEffect, useState } from 'react'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Menu, X } from 'lucide-react'
import Image from 'next/image'

export function Navigation() {
    const [isOpen, setIsOpen] = useState(false)
    const [navbarBg, setNavbarBg] = useState(false);
    useEffect(() => {
        const handleScroll = () => {
        if (window.scrollY > 0) { // Change this value based on when you want the background to change
            setNavbarBg(true);
        } else {
            setNavbarBg(false);
        }
        };

        handleScroll()

        window.addEventListener('scroll', handleScroll);

        return () => {
        window.removeEventListener('scroll', handleScroll);
        };
    }, []);
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
                <Link href="/products" className="hover:text-accent transition-colors font-medium">
                Products
                </Link>
                <Link href="/about" className="hover:text-accent transition-colors font-medium">
                About Us
                </Link>
                <Link href="/contact" className="hover:text-accent transition-colors font-medium">
                Contact
                </Link>
            </div>

            {/* Desktop CTA */}
            <div className="w-1/3 hidden md:flex items-center justify-end gap-4">
                {/* <Button variant="ghost" className="text-primary">
                Shop
                </Button> */}
                <Button className="bg-accent text-accent-foreground hover:bg-accent/90">
                Support
                </Button>
            </div>

            {/* Mobile Menu Button */}
            <Button
                onClick={() => setIsOpen(!isOpen)}
                className={`md:hidden p-0 ${navbarBg ? 'text-primary' : 'text-white'} bg-transparent`}
                aria-label="Toggle menu"
                // variant={navbarBg ? "ghost" : "default"}
            >
                {isOpen ? <X size={24} /> : <Menu size={24} />}
            </Button>
            </div>

            {/* Mobile Menu */}
            {isOpen && (
            <div className="md:hidden pb-4 space-y-2">
                <Link href="/products" className="block text-foreground py-2 hover:text-accent transition-colors">
                Products
                </Link>
                <Link href="/about" className="block text-foreground py-2 hover:text-accent transition-colors">
                About Us
                </Link>
                <Link href="/contact" className="block text-foreground py-2 hover:text-accent transition-colors">
                Contact
                </Link>
                <div className="flex gap-2 pt-2">
                <Button variant="outline" className="flex-1">
                    Shop
                </Button>
                <Button className="flex-1 bg-accent text-accent-foreground hover:bg-accent/90">
                    Support
                </Button>
                </div>
            </div>
            )}
        </div>
        </nav>
    )
}
