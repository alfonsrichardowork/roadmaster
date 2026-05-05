"use client";

import {
DropdownMenu,
DropdownMenuContent,
DropdownMenuItem,
DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { routing } from "@/i18n/routing";
import { allcategory } from "@prisma/client";
import { useLocale } from "next-intl";
import Image from "next/image";
import { usePathname, useRouter, useSearchParams } from "next/navigation";

const languages: { locale: string; flag: string }[] = [
{ locale: "id", flag: "/images/roadmaster/indonesia-flag-icon.svg" },
{ locale: "en", flag: "/images/roadmaster/united-kingdom-flag-icon.svg" },
];

interface LanguageSwitcherProps {
  categories: allcategory[]
  news: { slug: string; slug_eng: string; }[]
}

export function LanguageSwitcher({ categories, news } : LanguageSwitcherProps) {
    const locale = useLocale();
    const router = useRouter()
    const pathname = usePathname()
    const searchParams = useSearchParams()
    

     const selectLanguage = (lang: string) => {
        if (lang !== 'en' && lang !== 'id') return;
        if (locale !== lang)
        {
            setTimeout(async() => {
            let newPath = '';
            const allRoute = routing.pathnames
            const iterableRoutes = Object.entries(allRoute)
            .filter(([path]) => {
                const segments = path.split('/').filter(Boolean);
                return segments.length <= 1;
            }).map(([key, value]) => ({
                path: key,
                id: value.id,
                en: value.en,
            }));
            const segments = pathname.split('/');
            locale === 'en' && segments.splice(1, 1)
            const currentParams = searchParams.toString();
            if(segments.length > 1) {
                const match = iterableRoutes.find((val) =>
                    `/${segments[1]}` === val.en ||
                    `/${segments[1]}` === val.id
                );
                if (match) {
                    if (locale === 'en') {
                        segments[1] = match.id.slice(1, match.id.length);
                    } else {
                        segments[1] = match.en.slice(1, match.en.length);
                    }
                }
                
                if(segments.length > 2) {
                    if(segments[1] === 'berita' || segments[1] === "news") {
                        let temp = news.find((valnews) => (locale === 'en' ? valnews.slug_eng : valnews.slug) === segments[2])
                        if(temp){
                            if (locale === 'en') {
                                segments[2] = temp.slug
                            } else {
                                segments[2] = temp.slug_eng;
                            }
                        }
                            
                    }
                    else if(segments[1] === 'category' || segments[1] === "kategori") {
                        segments.map((cat, index) => {
                            if(index > 1){
                                let temp = categories.find((valCat) => (locale === 'en' ? valCat.slug_eng : valCat.slug) === cat)
                                if(temp){
                                    if (locale === 'en') {
                                        segments[index] = temp.slug
                                    } else {
                                        segments[index] = temp.slug_eng;
                                    }
                                }
                            }
                        })                         
                    }
                }
            }

            

            if (lang === 'en') {
                if (segments[1] !== 'en') {
                segments.splice(1, 0, 'en');
                }
                newPath = segments.join('/');
            }

            if (lang === 'id') {
                if (segments[1] === 'en') {
                segments.splice(1, 1);
                }
                newPath = segments.join('/') || '/';
            }

            const fullPath = currentParams ? `${newPath}?${currentParams}` : newPath;
            // console.log("final fullPath: ", fullPath)
            router.replace(fullPath);
            }, 100);
        }
    };


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
                    <div key={lang.locale} onClick={() => selectLanguage(lang.locale)} className={`flex items-center justify-center rounded py-0.5`} >
                        <DropdownMenuItem className={`cursor-pointer gap-1 ${ locale === lang.locale ? "bg-accent" : "" }`}>
                            <Image src={lang.flag} width={30} height={30} alt={lang.locale} className="shadow-lg border"/>
                            {lang.locale.toUpperCase()}
                        </DropdownMenuItem>
                    </div>
                ))} 
            </DropdownMenuContent>
        </DropdownMenu>
    );
};
