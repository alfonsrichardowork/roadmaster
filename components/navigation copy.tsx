// // 'use client'

// // import { useEffect, useState } from 'react'
// // import {Link} from "@/i18n/navigation";
// // import { Button } from '@/components/ui/button'
// // import { Menu, X } from 'lucide-react'
// // import Image from 'next/image'
// // import { usePathname } from 'next/navigation'
// // import { useTranslations } from 'next-intl'
// // import { LanguageSwitcher } from './language-switcher';
// // import { NavigationMenu, NavigationMenuContent, NavigationMenuItem, NavigationMenuLink, NavigationMenuList, NavigationMenuTrigger, navigationMenuTriggerStyle } from './ui/navigation-menu';

// // export function Navigation() {
    
// //     const t_navbar = useTranslations("Navbar Footer")
// //     const pathname = usePathname();
// //     const [isOpen, setIsOpen] = useState(false)
// //     const [navbarBg, setNavbarBg] = useState(false);
// //     useEffect(() => {
// //         const updateNavbarBg = () => {
// //             if (pathname.includes('/products') || pathname.includes('/produk')) {
// //             setNavbarBg(true);
// //             return;
// //             }

// //             if (isOpen) {
// //             setNavbarBg(true);
// //             return;
// //             }

// //             setNavbarBg(window.scrollY > 0);
// //         };

// //         updateNavbarBg();

// //         window.addEventListener('scroll', updateNavbarBg);

// //         return () => {
// //             window.removeEventListener('scroll', updateNavbarBg);
// //         };
// //     }, [pathname, isOpen]);
// //     return (
// //         <nav className={`fixed top-0 w-full z-50 duration-300 ease-in-out ${navbarBg ? 'bg-background shadow-md' : 'bg-transparent'}`}>
// //         <div className="max-w-7xl mx-auto w-full relative z-10 px-4 sm:px-6 lg:px-8">
// //             <div className="flex justify-between items-center h-16 w-full z-10">
// //             {/* Logo */}
// //             <Link href="/" className="md:w-1/3 w-1/2 flex items-center hover:opacity-80 transition-opacity">
// //                 <Image 
// //                 src={navbarBg ? "/images/roadmaster/logo_roadmaster_black.webp" : "/images/roadmaster/logo_roadmaster_white.webp"}
// //                 alt="Roadmaster Logo"
// //                 width={180}
// //                 height={60}
// //                 priority
// //                 className="max-h-8 w-auto"
// //                 />
// //             </Link>

// //             {/* Desktop Menu */}
// //             {/* <div className={`w-1/3 hidden md:flex items-center justify-center gap-8 text-sm font-medium ${navbarBg ? 'text-primary' : 'text-white'}`}>
// //                 <Link href="/category" className="hover:text-accent transition-colors font-medium">
// //                 {t_navbar('products')}
// //                 </Link>
// //                 <Link href="/about" className="hover:text-accent transition-colors font-medium">
// //                 {t_navbar('about')}
// //                 </Link>
// //                 <Link href="/contact" className="hover:text-accent transition-colors font-medium">
// //                 {t_navbar('contact')}
// //                 </Link>
// //             </div> */}
// //             <NavigationMenu>
// //                 <NavigationMenuList className={`${navbarBg ? 'text-primary' : 'text-background'}`}>
// //                     <NavigationMenuItem>
// //                     <NavigationMenuTrigger className={`bg-transparent hover:bg-transparent`}>{t_navbar('products')}</NavigationMenuTrigger>
// //                     <NavigationMenuContent>
// //                         <ul className="w-full">
// //                         <ListItem href="/docs" title="Introduction">
// //                             Re-usable components built with Tailwind CSS.
// //                         </ListItem>
// //                         <ListItem href="/docs/installation" title="Installation">
// //                             How to install dependencies and structure your app.
// //                         </ListItem>
// //                         <ListItem href="/docs/primitives/typography" title="Typography">
// //                             Styles for headings, paragraphs, lists...etc
// //                         </ListItem>
// //                         </ul>
// //                     </NavigationMenuContent>
// //                     </NavigationMenuItem>
// //                     <NavigationMenuItem>
// //                         <NavigationMenuLink asChild className={`${navigationMenuTriggerStyle()} bg-transparent hover:bg-transparent`}>
// //                             <Link href="/about">
// //                                 {t_navbar('about')}
// //                             </Link>
// //                         </NavigationMenuLink>
// //                     </NavigationMenuItem>
// //                     <NavigationMenuItem>
// //                         <NavigationMenuLink asChild className={`${navigationMenuTriggerStyle()} bg-transparent hover:bg-transparent`}>
// //                             <Link href="/contact">
// //                                 {t_navbar('contact')}
// //                             </Link>
// //                         </NavigationMenuLink>
// //                     </NavigationMenuItem>
// //                 </NavigationMenuList>
// //                 </NavigationMenu>



// //             {/* Desktop CTA */}
// //             <div className="w-1/3 hidden md:flex items-center justify-end gap-4">
// //                 <LanguageSwitcher />
// //                 <Button className="bg-accent text-accent-foreground hover:bg-accent/90">
// //                 {t_navbar('support')}
// //                 </Button>
// //             </div>

// //             <div className='md:hidden w-1/3 flex justify-end gap-2 h-full items-center'>
// //                 <LanguageSwitcher />
// //                 <Button
// //                     onClick={() => setIsOpen(!isOpen)}
// //                     className={`md:hidden p-0 text-primary bg-transparent hover:bg-transparent hover:text-accent w-fit`}
// //                     aria-label="Toggle menu"
// //                 >
// //                     {isOpen ? <X size={24} /> : <Menu size={24} className={navbarBg ? 'text-primary' : 'text-background'}/>}
// //                 </Button>
// //             </div>
// //             </div>

// //             {/* Mobile Menu Backdrop */}
// //             {isOpen && (
// //                 <div 
// //                     className="top-16 fixed inset-0 bg-black/50 md:hidden -z-10"
// //                     onClick={() => setIsOpen(false)}
// //                     style={{
// //                         animation: 'fadeIn 0.3s ease-in-out'
// //                     }}
// //                 />
// //             )}

// //             <div className={`absolute top-16 left-0 right-0 md:hidden transition-all duration-300 ease-in-out origin-top z-40 ${
// //                 isOpen 
// //                     ? 'opacity-100 scale-y-100 visible' 
// //                     : 'opacity-0 scale-y-95 invisible'
// //             }`}
// //             style={{
// //                 transformOrigin: 'top',
// //             }}>
// //                 <div className="bg-background p-4 rounded-b-xl">
// //                     <Link 
// //                         href="/category" 
// //                         className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
// //                         onClick={() => setIsOpen(false)}
// //                     >
// //                         {t_navbar('products')}
// //                     </Link>
// //                     <Link 
// //                         href="/about" 
// //                         className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
// //                         onClick={() => setIsOpen(false)}
// //                     >
// //                         {t_navbar('about')}
// //                     </Link>
// //                     <Link 
// //                         href="/contact" 
// //                         className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
// //                         onClick={() => setIsOpen(false)}
// //                     >
// //                         {t_navbar('contact')}
// //                     </Link>
// //                     <div className="flex gap-2 border-t border-gray-200/50 mt-4">
// //                         <Button 
// //                             className="flex-1 bg-accent text-accent-foreground hover:bg-accent/90 transition-all duration-200" 
// //                             onClick={() => setIsOpen(false)}
// //                         >
// //                             {t_navbar('support')}
// //                         </Button>
// //                     </div>
// //                 </div>
// //             </div>

// //             <style jsx>{`
// //                 @keyframes fadeIn {
// //                     from {
// //                         opacity: 0;
// //                     }
// //                     to {
// //                         opacity: 1;
// //                     }
// //                 }
// //             `}</style>
// //         </div>
// //         </nav>
// //     )
// // }



// // function ListItem({
// //   title,
// //   children,
// //   href,
// //   ...props
// // }: React.ComponentPropsWithoutRef<"li"> & { href: string }) {
// //   return (
// //     <li {...props}>
// //       <NavigationMenuLink asChild>
// //         <Link href={href as any}>
// //           <div className="flex flex-col gap-1 text-sm">
// //             <div className="leading-none font-medium">{title}</div>
// //             <div className="line-clamp-2 text-muted-foreground">{children}</div>
// //           </div>
// //         </Link>
// //       </NavigationMenuLink>
// //     </li>
// //   )
// // }







// 'use client'

// import { useEffect, useState } from 'react'
// import {Link} from "@/i18n/navigation";
// import { Button } from '@/components/ui/button'
// import { Menu, X } from 'lucide-react'
// import Image from 'next/image'
// import { usePathname } from 'next/navigation'
// import { useTranslations } from 'next-intl'
// import { LanguageSwitcher } from './language-switcher';
// import { NavigationMenu, NavigationMenuContent, NavigationMenuItem, NavigationMenuLink, NavigationMenuList, NavigationMenuTrigger, navigationMenuTriggerStyle } from './ui/navigation-menu';

// export function Navigation() {
    
//     const t_navbar = useTranslations("Navbar Footer")
//     const pathname = usePathname();
//     const [isOpen, setIsOpen] = useState(false)
//     const [navbarBg, setNavbarBg] = useState(false);
//     const [isDropdownOpen, setIsDropdownOpen] = useState(false);
//     useEffect(() => {
//         const updateNavbarBg = () => {
//             if (pathname.includes('/products') || pathname.includes('/produk')) {
//             setNavbarBg(true);
//             return;
//             }

//             if (isOpen || isDropdownOpen) {
//             setNavbarBg(true);
//             return;
//             }

//             setNavbarBg(window.scrollY > 0);
//         };

//         updateNavbarBg();

//         window.addEventListener('scroll', updateNavbarBg);

//         return () => {
//             window.removeEventListener('scroll', updateNavbarBg);
//         };
//     }, [pathname, isOpen, isDropdownOpen]);
//     return (
//         <nav className={`fixed top-0 w-full z-50 duration-300 ease-in-out ${navbarBg ? 'bg-background shadow-md' : 'bg-transparent'}`}>
//         <div className="max-w-7xl mx-auto w-full relative z-10 px-4 sm:px-6 lg:px-8">
//             <div className="flex justify-between items-center h-16 w-full z-10">
//             {/* Logo */}
//             <Link href="/" className="md:w-1/3 w-1/2 flex items-center hover:opacity-80 transition-opacity">
//                 <Image 
//                 src={navbarBg ? "/images/roadmaster/logo_roadmaster_black.webp" : "/images/roadmaster/logo_roadmaster_white.webp"}
//                 alt="Roadmaster Logo"
//                 width={180}
//                 height={60}
//                 priority
//                 className="max-h-8 w-auto"
//                 />
//             </Link>

//             {/* Desktop Menu */}
//             {/* <div className={`w-1/3 hidden md:flex items-center justify-center gap-8 text-sm font-medium ${navbarBg ? 'text-primary' : 'text-white'}`}>
//                 <Link href="/category" className="hover:text-accent transition-colors font-medium">
//                 {t_navbar('products')}
//                 </Link>
//                 <Link href="/about" className="hover:text-accent transition-colors font-medium">
//                 {t_navbar('about')}
//                 </Link>
//                 <Link href="/contact" className="hover:text-accent transition-colors font-medium">
//                 {t_navbar('contact')}
//                 </Link>
//             </div> */}
//             <div className='md:block hidden'>
//                 <NavigationMenu onValueChange={(value) => setIsDropdownOpen(!!value)}>
//                 <NavigationMenuList className={`${navbarBg ? 'text-primary' : 'text-background'}`}>
//                     <NavigationMenuItem>
//                     <NavigationMenuTrigger className={`bg-transparent hover:bg-transparent`}>{t_navbar('products')}</NavigationMenuTrigger>
//                     <NavigationMenuContent className={`min-w-screen border-none ${navbarBg ? 'bg-background' : 'bg-background shadow-md'} data-[state=open]:animate-slideDown`}>
//                         <ul className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6">
//                         <ListItem href="/docs" title="Introduction">
//                             Re-usable components built with Tailwind CSS.
//                         </ListItem>
//                         <ListItem href="/docs/installation" title="Installation">
//                             How to install dependencies and structure your app.
//                         </ListItem>
//                         <ListItem href="/docs/primitives/typography" title="Typography">
//                             Styles for headings, paragraphs, lists...etc
//                         </ListItem>
//                         </ul>
//                     </NavigationMenuContent>
//                     </NavigationMenuItem>
//                     <NavigationMenuItem>
//                         <NavigationMenuLink asChild className={`${navigationMenuTriggerStyle()} bg-transparent hover:bg-transparent`}>
//                             <Link href="/about">
//                                 {t_navbar('about')}
//                             </Link>
//                         </NavigationMenuLink>
//                     </NavigationMenuItem>
//                     <NavigationMenuItem>
//                         <NavigationMenuLink asChild className={`${navigationMenuTriggerStyle()} bg-transparent hover:bg-transparent`}>
//                             <Link href="/contact">
//                                 {t_navbar('contact')}
//                             </Link>
//                         </NavigationMenuLink>
//                     </NavigationMenuItem>
//                 </NavigationMenuList>
//                 </NavigationMenu>
//             </div>


//             {/* Desktop CTA */}
//             <div className="w-1/3 hidden md:flex items-center justify-end gap-4">
//                 <LanguageSwitcher />
//                 <Button className="bg-accent text-accent-foreground hover:bg-accent/90">
//                 {t_navbar('support')}
//                 </Button>
//             </div>

//             <div className='md:hidden w-1/3 flex justify-end gap-2 h-full items-center'>
//                 <LanguageSwitcher />
//                 <Button
//                     onClick={() => setIsOpen(!isOpen)}
//                     className={`md:hidden p-0 text-primary bg-transparent hover:bg-transparent hover:text-accent w-fit`}
//                     aria-label="Toggle menu"
//                 >
//                     {isOpen ? <X size={24} /> : <Menu size={24} className={navbarBg ? 'text-primary' : 'text-background'}/>}
//                 </Button>
//             </div>
//             </div>

//             {/* Mobile Menu Backdrop */}
//             {isOpen && (
//                 <div 
//                     className="top-16 fixed inset-0 bg-black/50 md:hidden -z-10"
//                     onClick={() => setIsOpen(false)}
//                     style={{
//                         animation: 'fadeIn 0.3s ease-in-out'
//                     }}
//                 />
//             )}

//             <div className={`absolute top-16 left-0 right-0 md:hidden transition-all duration-300 ease-in-out origin-top z-40 ${
//                 isOpen 
//                     ? 'opacity-100 scale-y-100 visible' 
//                     : 'opacity-0 scale-y-95 invisible'
//             }`}
//             style={{
//                 transformOrigin: 'top',
//             }}>
//                 <div className="bg-background p-4 rounded-b-xl">
//                     <Link 
//                         href="/category" 
//                         className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
//                         onClick={() => setIsOpen(false)}
//                     >
//                         {t_navbar('products')}
//                     </Link>
//                     <Link 
//                         href="/about" 
//                         className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
//                         onClick={() => setIsOpen(false)}
//                     >
//                         {t_navbar('about')}
//                     </Link>
//                     <Link 
//                         href="/contact" 
//                         className="block text-foreground py-3 rounded-lg hover:bg-gray-100 transition-all duration-200 font-medium hover:text-accent" 
//                         onClick={() => setIsOpen(false)}
//                     >
//                         {t_navbar('contact')}
//                     </Link>
//                     <div className="flex gap-2 border-t border-gray-200/50 mt-4">
//                         <Button 
//                             className="flex-1 bg-accent text-accent-foreground hover:bg-accent/90 transition-all duration-200" 
//                             onClick={() => setIsOpen(false)}
//                         >
//                             {t_navbar('support')}
//                         </Button>
//                     </div>
//                 </div>
//             </div>

//             <style jsx>{`
//                 @keyframes fadeIn {
//                     from {
//                         opacity: 0;
//                     }
//                     to {
//                         opacity: 1;
//                     }
//                 }
//                 @keyframes slideDown {
//                     from {
//                         opacity: 0;
//                         transform: translateY(-10px);
//                     }
//                     to {
//                         opacity: 1;
//                         transform: translateY(0);
//                     }
//                 }
//             `}</style>
//             <style jsx global>{`
//                 [data-state=open].animate-slideDown {
//                     animation: slideDown 0.3s ease-in-out;
//                 }
//             `}</style>
//         </div>
//         </nav>
//     )
// }



// function ListItem({
//   title,
//   children,
//   href,
//   ...props
// }: React.ComponentPropsWithoutRef<"li"> & { href: string }) {
//   return (
//     <li {...props}>
//       <NavigationMenuLink asChild>
//         <Link href={href as any}>
//           <div className="flex flex-col gap-1 text-sm">
//             <div className="leading-none font-medium">{title}</div>
//             <div className="line-clamp-2 text-muted-foreground">{children}</div>
//           </div>
//         </Link>
//       </NavigationMenuLink>
//     </li>
//   )
// }
