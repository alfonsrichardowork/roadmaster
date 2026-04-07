import { Categories } from "@/components/categories";
import { NewProducts } from "@/components/new-products";
import { Hero } from "@/components/hero";
import { NewsEvents } from "@/components/news-events";
import { Newsletter } from "@/components/newsletter";
import { Testimonials } from "@/components/testimonials";
import { Promo } from "@/components/promo";

export default function Home() {
  return (
    <>
      <Hero />
      <NewProducts />
      <Promo />
      {/* <Categories /> */}
      <NewsEvents />
      {/* <Testimonials />
      <Newsletter /> */}
    </>
  )
}
