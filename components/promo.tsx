import { Tag } from "lucide-react";
import { Button } from "./ui/button";

export function Promo() {
  return (
    <section className="pt-20 px-4 sm:px-6 lg:px-8 relative overflow-hidden">
      {/* Background decorative elements */}
      <div className="absolute -top-40 -right-40 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-50"></div>
      <div className="absolute -bottom-40 -left-40 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-40"></div>

      <div className="max-w-7xl mx-auto relative z-10">
        <div className="fade-in-up mb-16">
          <div className="relative">
            <div className="absolute -inset-1 bg-linear-to-r from-accent/40 via-accent/30 to-accent/40 opacity-75 rounded-2xl blur-xl"></div>
            <div className="relative bg-linear-to-r from-accent to-accent/80 rounded-2xl p-8 md:p-12 text-white overflow-hidden">
              {/* Animated background elements */}
              <div className="absolute top-0 right-0 w-96 h-96 bg-white/5 rounded-full blur-3xl -mr-48 -mt-48"></div>
              <div className="absolute bottom-0 left-0 w-80 h-80 bg-white/5 rounded-full blur-3xl -ml-40 -mb-40"></div>

              <div className="relative z-10 max-w-3xl">
                <div className="flex items-center gap-2 mb-4">
                  <Tag className="w-5 h-5" />
                  <span className="font-semibold text-white/90">SPECIAL OFFER</span>
                </div>
                <h3 className="text-3xl md:text-4xl font-bold mb-4">
                  Spring Sale Now Live
                </h3>
                <p className="text-lg text-white/90 mb-8 max-w-xl">
                  Get up to 30% off on selected products. Premium audio gear at unbeatable prices. Limited time only!
                </p>
                <Button className="bg-white text-accent hover:bg-white/90 font-semibold px-8 py-3">
                  Shop Sale →
                </Button>
              </div>
            </div>
          </div>
        </div>


      </div>
    </section>
  )
}
