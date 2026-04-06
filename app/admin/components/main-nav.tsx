"use client"

import * as React from "react"
import Link from "next/link"
import { cn } from "@/lib/utils"
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
  NavigationMenuTrigger,
  navigationMenuTriggerStyle,
} from "@/app/admin/components/ui/navigation-menu"
import { useParams, usePathname } from "next/navigation"
import { ArrowDown01, ArrowUp, ChartColumnIncreasing, ChartColumnStacked, FileText, List, Newspaper, Package, ScrollText, Speaker, Users } from "lucide-react"
interface MainNavClientProps {
  isadmin: boolean;
}

interface Menu {
  title: string; 
  href: string; 
  description: string; 
  icon: React.ElementType;
}

type MainNavProps = React.HTMLAttributes<HTMLElement> & MainNavClientProps;

export function MainNav({
  isadmin,
  className,
  ...props
}: MainNavProps) {
  const params = useParams();
  const pathname = usePathname()
  const pathSegments = pathname.split('/');


    const Products: Menu[] = [
    {
      title: "All Products",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/products`,
      description: "Show All Products",
      icon: Speaker,
    },
    {
      title: "Featured Products",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/featuredproduct`,
      description: "Show All Featured Products",
      icon: Speaker,
    },
    ...(isadmin
      ? [
          {
            title: "Category",
            href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/category`,
            description: "Show All Categories.",
            icon: ChartColumnStacked
          },
          {
            title: "Sub Category",
            href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/subcategory`,
            description: "Show All Sub Categories.",
            icon: ChartColumnStacked
          },
          {
            title: "Sub Sub Category",
            href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/subsubcategory`,
            description: "Show All Sub Sub Categories.",
            icon: ChartColumnStacked
          },
        ]
      : []),
  ];


  const Specifications: Menu[] = [
    {
      title: "Parent",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/parentspec`,
      description: "Show All Parent Specifications",
      icon: ScrollText
    },
    {
      title: "Sub Parent",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/subparentspec`,
      description: "Show All Sub Parent Specifications.",
      icon: ScrollText
    },
    {
      title: "Child",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/childspec`,
      description: "Show All Child Specifications.",
      icon: ScrollText
    },
    {
      title: "Priority",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/spec/priority`,
      description: "Show All Specifications Priorities.",
      icon: ArrowDown01
    }  
  ];

    const SiteSettings: Menu[] = [
    {
      title: "Brand Settings",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/settings`,
      description: "Show Brand Settings",
      icon: ArrowUp,
    },
    {
      title: "User Settings",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/usersettings`,
      description: "Show All User Permissions.",
      icon: FileText,
    },
    {
      title: "Create New User",
      href: `${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/createuser`,
      description: "Create New User.",
      icon: Users,
    },
  ];

  return (
    <NavigationMenu>
      <NavigationMenuList>
      <NavigationMenuItem>
            <NavigationMenuLink href={`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}`} className={`${navigationMenuTriggerStyle()} flex gap-1.5 text-xs ${pathSegments.length === 3 ? 'bg-primary text-background' : ''}`}>
              <ChartColumnIncreasing size={16} /> Overview
            </NavigationMenuLink>
        </NavigationMenuItem>
        <NavigationMenuItem>
          <NavigationMenuTrigger className={`flex gap-1.5 text-xs ${pathSegments[3] === 'products' || pathSegments[3] === 'featuredproduct' || pathSegments[3] === 'category' || pathSegments[3] === 'subcategory' || pathSegments[3] === 'subsubcategory' || pathSegments[3] === 'series' ? 'bg-primary text-background hover:text-background' : ''}`}>
            <Package size={16} /> Products
          </NavigationMenuTrigger>
          <NavigationMenuContent>
            <ul className="grid w-[300px] gap-3 p-4 md:grid-cols-1 ">
              {Products.map((component) => {
                const Icon = component.icon;
                return (
                  <ListItem
                    key={component.title}
                    href={component.href}
                    className={`${pathSegments[3] === component.href.split('/')[3] ? 'bg-primary hover:bg-primary' : ''}`}
                  >
                    <div className={`flex items-center gap-1.5 ${pathSegments[3] === component.href.split('/')[3] ? "bg-primary text-background" : "text-foreground hover:text-primary"}`}>
                      <Icon size={14}/>
                      {component.title}
                    </div>
                  </ListItem>
                );
              })}
            </ul>
          </NavigationMenuContent>
        </NavigationMenuItem>
      <NavigationMenuItem>
          <NavigationMenuLink href={`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/news`} className={`${navigationMenuTriggerStyle()} flex gap-1.5 text-xs ${pathSegments[3] === 'news' ? 'bg-primary text-background hover:text-background' : ''}`}>
            <Newspaper size={16} /> News
          </NavigationMenuLink>
        </NavigationMenuItem>

    
        {isadmin && 
          <NavigationMenu>
            <NavigationMenuList>
              <NavigationMenuItem>
                <NavigationMenuTrigger className={`flex gap-1.5 text-xs ${pathSegments[3] === 'parentspec' || pathSegments[3] === 'subparentspec' || pathSegments[3] === 'childspec' || (pathSegments[4] === 'priority' && pathSegments[3] === 'spec') ? 'bg-primary text-background hover:text-background' : ''}`}>
                  <List size={16} /> Specification
                </NavigationMenuTrigger>
                <NavigationMenuContent>
                  <ul className="min-w-[300px] p-4 block text-sm text-black">
                    {Specifications.map((component) => {
                      const Icon = component.icon;
                      return (
                        <ListItem
                          key={component.title}
                          href={component.href}
                          className={`${pathSegments[3] === component.href.split('/')[3] ? 'bg-primary hover:bg-primary' : ''}`}
                        >
                          <div className={`flex items-center gap-1.5 ${pathSegments[3] === component.href.split('/')[3] ? "bg-primary text-background" : "text-foreground hover:text-primary"} `}>
                            <Icon size={14}/>
                            {component.title}
                          </div>
                        </ListItem>
                      );
                    })}
                  </ul>
                </NavigationMenuContent>
              </NavigationMenuItem>
            </NavigationMenuList>
          </NavigationMenu>
        }

        {isadmin && 
        <NavigationMenu>
          <NavigationMenuList>
            <NavigationMenuItem>
              <NavigationMenuTrigger className={`flex gap-1.5 text-xs ${pathSegments[3] === 'settings' || pathSegments[3] === 'usersettings' || pathSegments[3] === 'createuser' ? 'bg-primary text-background hover:text-background' : ''}`}>
                <List size={16} /> Others Settings
              </NavigationMenuTrigger>
              <NavigationMenuContent>
                <ul className="min-w-[300px] p-4 block text-sm text-black">
                  {SiteSettings.map((component) => {
                    const Icon = component.icon;
                    return (
                      <ListItem
                        key={component.title}
                        href={component.href}
                        className={`${pathSegments[3] === component.href.split('/')[3] ? 'bg-primary hover:bg-primary' : ''}`}
                      >
                        <div className={`flex items-center gap-1.5 ${pathSegments[3] === component.href.split('/')[3] ? "bg-primary text-background" : "text-foreground hover:text-primary"}`}>
                          <Icon size={14}/>
                          {component.title}
                        </div>
                      </ListItem>
                    );
                  })}
                </ul>
              </NavigationMenuContent>
            </NavigationMenuItem>
          </NavigationMenuList>
        </NavigationMenu>
        }
        
      </NavigationMenuList>
    </NavigationMenu>
  )
}

const ListItem = React.forwardRef<
  React.ElementRef<"a">,
  React.ComponentPropsWithoutRef<"a">
>(({ className, title, children, ...props }, ref) => {
  return (
    <li>
      <NavigationMenuLink asChild>
        <a
          ref={ref}
          className={cn(
            "block select-none space-y-1 rounded-md p-3 leading-none no-underline outline-hidden transition-colors hover:bg-accent hover:text-primary focus:bg-accent focus:text-accent-foreground",
            className
          )}
          {...props}
        >
          <div className="text-sm font-medium leading-none">{title}</div>
          <p className="line-clamp-2 text-sm leading-snug text-muted-foreground">
            {children}
          </p>
        </a>
      </NavigationMenuLink>
    </li>
  )
})
ListItem.displayName = "ListItem"
