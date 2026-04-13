import { NewProducts } from "@/components/new-products";
import { Hero } from "@/components/hero";
import { NewsEvents } from "@/components/news-events";
// import { Promo } from "@/components/promo";

export default function Home() {
  return (
    <>
      <Hero />
      <NewProducts />
      {/* <Promo /> */}
      {/* <Categories /> */}
      <NewsEvents />
      {/* <Testimonials />
      <Newsletter /> */}
    </>
  )
}
