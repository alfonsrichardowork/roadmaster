import Image from "next/image";
import { Link } from "@/i18n/navigation";
import { getLocale } from "next-intl/server";
import { news } from "@prisma/client";
import { Calendar } from "lucide-react";

type NewsCardProps = {
  allnews: news
  index: number
}

const formatDate = (isoDate: string, locale: string): string => {
    const date = new Date(isoDate);
    const options: Intl.DateTimeFormatOptions = {
      weekday: "long",
      day: "2-digit",
      month: "long",
      year: "numeric",
    };
    return date.toLocaleDateString(locale === 'id' ? 'id-ID' : 'en-EN', options);
};
  
export async function NewsCard({ allnews, index }: NewsCardProps) {
    const locale = await getLocale();
    return (
        <Link
            href={{pathname: "/news/[newsSlug]", params: { newsSlug: locale === 'id' ? allnews.slug : allnews.slug_eng }}} 
            className={`fade-in-up stagger-${(index % 3) + 1} group cursor-pointer`}
        >
            <div className="relative h-full">
            <div className="absolute -inset-0.5 bg-linear-to-br from-accent/30 to-transparent opacity-0 group-hover:opacity-100 rounded-lg transition-opacity duration-300 blur-lg"></div>

            <div className="relative bg-white rounded-lg overflow-hidden border border-border hover:shadow-2xl transition-all duration-500 h-full flex flex-col group-hover:translate-y-[-4px]">
                <div className="h-40 bg-gradient-to-br from-accent/20 to-accent/5 flex items-center justify-center relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-t from-accent/10 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
                <Image src={process.env.NEXT_PUBLIC_ROOT_URL + allnews.news_img} alt={locale === 'id' ? allnews.title: allnews.title_eng} width={300} height={300} className='max-h-fit w-full'/>
                </div>

                <div className="p-6 flex flex-col flex-1">

                <h3 className="text-lg font-bold text-primary mb-3 group-hover:text-accent transition-colors line-clamp-2">
                    {locale === 'id' ? allnews.title: allnews.title_eng}
                </h3>

                <div className="flex items-center gap-2 text-sm text-foreground/60 border-t border-border pt-4">
                    <Calendar className="w-4 h-4" />
                    {formatDate(allnews.event_date.toString(), locale)}
                </div>
                </div>
            </div>
            </div>
        </Link>
    )
}