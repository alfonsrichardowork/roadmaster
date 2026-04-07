"use client";

import {
DropdownMenu,
DropdownMenuContent,
DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Link, usePathname } from "@/i18n/navigation";
import { useLocale } from "next-intl";
import Image from "next/image";

const languages: { locale: string; flag: string }[] = [
{ locale: "id", flag: "/images/roadmaster/indonesia-flag-icon.svg" },
{ locale: "en", flag: "/images/roadmaster/united-kingdom-flag-icon.svg" },
];

export function LanguageSwitcher() {
    const locale = useLocale();
    const pathname = usePathname();

    const selectedLanguage =
    languages.find((lang) => lang.locale === locale) ?? languages[0];

    return (
        selectedLanguage && 
        <DropdownMenu>
            <DropdownMenuTrigger asChild className="shadow-lg border">
                <Image src={selectedLanguage.flag} width={30} height={30} alt={selectedLanguage.locale} />
            </DropdownMenuTrigger>
            <DropdownMenuContent
                align="center"
                className="w-fit min-w-0 p-1 bg-background/50 border-none"
            >
                {languages.map((lang) => ( 
                    <Link key={lang.locale} href={pathname} locale={lang.locale} className={`flex items-center gap-2 rounded px-2 py-1 ${ locale === lang.locale ? "bg-accent" : "" }`} >
                        <Image src={lang.flag} width={30} height={30} alt={lang.locale} className="shadow-lg border"/>
                    </Link>
                ))} 
            </DropdownMenuContent>
        </DropdownMenu>
    );
};
