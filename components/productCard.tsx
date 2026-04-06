import { ProductCardData } from "@/lib/type";
import Image from "next/image";
import { Button } from "./ui/button";
import Link from "next/link";

const order: Record<string, number> = {
  "Category": 0,
  "Sub Category": 1,
  "Sub Sub Category": 2,
};

type ProductCardProps = {
  product: ProductCardData
  index: number
}

export function ProductCard({ product, index }: ProductCardProps) {
  return (
        <div
            className={`fade-in-up stagger-${(index % 4) + 1} group relative`}
        >
            <div className="absolute -inset-0.5 bg-gradient-to-br from-accent/30 to-transparent opacity-0 group-hover:opacity-100 rounded-lg transition-opacity duration-300 blur-sm"></div>
            <Link href={`/products/${product.slug}`} className="relative bg-white rounded-lg shadow-md hover:shadow-2xl transition-all duration-500 overflow-hidden flex flex-col h-full group-hover:translate-y-[-8px] block">
                {/* Product Image Area */}
                <div className="relative bg-white flex items-center justify-center overflow-hidden">
                    <div className="relative z-10 transition-transform duration-500">
                        <Image src={process.env.NEXT_PUBLIC_ROOT_URL + product.cover_img} alt={product.name} width={300} height={300} className='max-h-[200px] w-full'/>
                    </div>
                </div>
                {/* Product Info */}
                <div className="p-6 flex flex-col flex-1">
                    {/* Category with minimum height */}
                    <p className="text-sm text-accent font-semibold uppercase tracking-wider mb-2 min-h-10">
                    {product.allCat && product.allCat.length > 0
                        ? product.allCat
                            .sort((a, b) => (order[a.type] ?? 99) - (order[b.type] ?? 99))
                            .map((cat) => cat.name)
                            .join(" - ")
                        : ""}
                    </p>
                    {/* Title with minimum height */}
                    <h3 className="text-xl font-bold text-primary mb-3 group-hover:text-accent transition-colors min-h-14">
                    {product.name}
                    </h3>
                    <Button className="w-full bg-primary text-primary-foreground hover:bg-primary/90 transition-all duration-300 transform hover:scale-105 active:scale-95">
                    View Details
                    </Button>
                </div>
            </Link>
        </div>
    )
}