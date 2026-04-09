"use client";

import {
DropdownMenu,
DropdownMenuContent,
DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Link, usePathname as usePathnameIntl } from "@/i18n/navigation";
import { allcategory } from "@prisma/client";
import { useLocale } from "next-intl";
import Image from "next/image";
import { usePathname } from "next/navigation";

const languages: { locale: string; flag: string }[] = [
{ locale: "id", flag: "/images/roadmaster/indonesia-flag-icon.svg" },
{ locale: "en", flag: "/images/roadmaster/united-kingdom-flag-icon.svg" },
];

interface LanguageSwitcherProps {
  categories: allcategory[]
}

export function LanguageSwitcher({ categories } : LanguageSwitcherProps) {
    const locale = useLocale();
    const pathnameIntl = usePathnameIntl();
    const pathname = usePathname()
    const finalPathname : string[] = pathname.split('/')
    locale === 'en' && finalPathname.splice(1, 1)
    const finalIntlPathname: string[] = pathnameIntl.split('/')
    let finalLinkRoute = ''
    finalIntlPathname.map((path: string, index) => {
        if(path != ''){
            if (path[0] === '[' && path[path.length - 1] === ']') {
                if(finalPathname[index - 1] === 'category' || finalPathname[index - 1] === 'kategori') {
                    finalPathname.map((val, idx) => {
                        if(idx > index - 1) {
                            let temp = categories.find((valCat) => (locale === 'en' ? valCat.slug_eng : valCat.slug) === val)
                            finalLinkRoute = finalLinkRoute.concat('/' + (locale === 'en' ? temp?.slug : temp?.slug_eng))
                        }
                    })
                }
                else{
                    finalLinkRoute = finalLinkRoute.concat('/' + finalPathname[index])
                }
            }
            else{
                finalLinkRoute = finalLinkRoute.concat('/' + path)
            }
        }
    })
    const selectedLanguage =
    languages.find((lang) => lang.locale === locale) ?? languages[0];
    return (
        selectedLanguage && 
        <DropdownMenu>
            <DropdownMenuTrigger asChild className="h-fit">
                <Image src={selectedLanguage.flag} width={30} height={30} alt={selectedLanguage.locale} className="border border-background rounded-sm shadow-lg"/>
            </DropdownMenuTrigger>
            <DropdownMenuContent
                align="center"
                className="w-fit min-w-0 p-1 bg-background/95 border shadow-xl"
            >
                {languages.map((lang) => ( 
                    <Link key={lang.locale} href={pathnameIntl === '/' ? pathnameIntl : finalLinkRoute as any} locale={lang.locale} className={`flex items-center gap-2 rounded px-2 py-1 ${ locale === lang.locale ? "bg-accent" : "" }`} >
                        <Image src={lang.flag} width={30} height={30} alt={lang.locale} className="shadow-lg border"/>
                        {lang.locale.toUpperCase()}
                    </Link>
                ))} 
            </DropdownMenuContent>
        </DropdownMenu>
    );
};
