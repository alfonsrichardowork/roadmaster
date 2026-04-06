
import DompurifyContent from '@/components/dompurifyText'
import SpecificationTable from '@/components/spec-table'
import { Button } from '@/components/ui/button'
import prismadb from '@/lib/prismadb'
import { Star, ShoppingCart, Heart, Share2, Check } from 'lucide-react'
import Image from 'next/image'
import Link from 'next/link'

export interface SpecificationProp {
  parentname: string
  child: ChildSpecificationProp[]
}

export interface ChildSpecificationProp {
  childname: string
  value: string
  slug: string
  notes: string
  unit: string
  subParentName: string
}

const order: Record<string, number> = {
  "Category": 0,
  "Sub Category": 1,
  "Sub Sub Category": 2,
};

export default async function ProductPage({
  params,
}: {
  params: Promise<{ productSlug: string }>
}) {
  const { productSlug } = await params;
  const product = await prismadb.product.findFirst({
    where: {
      slug: productSlug
    },
    include: {
      allCat: true,
      connectorSpecifications: {
        include: {
          dynamicspecification: true,
          dynamicspecificationParent: true,
          dynamicspecificationSubParent: true
        }
      }
    }
  });

  const specsCombined = (product?.connectorSpecifications ?? []).reduce<SpecificationProp[]>(
    (acc, connector) => {
      const parentname = connector.dynamicspecificationParent?.name ?? "";
      const subparentname = connector.dynamicspecificationSubParent?.name ?? "";

      const child: ChildSpecificationProp = {
        childname: connector.dynamicspecification?.name ?? "",
        value: connector.value ?? "",
        notes: connector.notes ?? "",
        slug: connector.dynamicspecification?.slug ?? "",
        unit: connector.dynamicspecification?.unit ?? "",
        subParentName: subparentname ?? ''
      };

      const existingGroup = acc.find(
        (group) =>
          group.parentname === parentname
      );

      if (existingGroup) {
        existingGroup.child.push(child);
      } else {
        acc.push({ parentname, child: [child] });
      }

      return acc;
    },
    []
  );

  // ✅ Build lookup maps for faster access
  const parentPriorityMap = new Map(
    product?.connectorSpecifications.map((c) => [
      c.dynamicspecificationParent?.name ?? "",
      c.dynamicspecificationParent?.priority ?? 0,
    ])
  );

  const childPriorityMap = new Map(
    product?.connectorSpecifications.map((c) => [
      c.dynamicspecification?.name ?? "",
      c.dynamicspecification?.priority ?? 0,
    ])
  );

  // ✅ Sort parent/subparent groups by priority
  specsCombined.sort((a, b) => {
    const aParentPriority = Number(parentPriorityMap.get(a.parentname)) ?? 0;
    const bParentPriority = Number(parentPriorityMap.get(b.parentname)) ?? 0;
    if (aParentPriority !== bParentPriority)
      return aParentPriority - bParentPriority;
    
    return 0;
  });

  // ✅ Sort children inside each group by their own priority
  specsCombined.forEach((group) => {
    group.child.sort((a, b) => {
      const aPriority = Number(childPriorityMap.get(a.childname)) ?? 0;
      const bPriority = Number(childPriorityMap.get(b.childname)) ?? 0;
      return aPriority - bPriority;
    });
  });

  if (!product) {
    return (
      <>
        <main className="pt-32 pb-20 px-4">
          <div className="max-w-6xl mx-auto text-center">
            <h1 className="text-4xl font-bold text-primary mb-4">Product Not Found</h1>
            <Button asChild>
              <Link href="/products">Back to Products</Link>
            </Button>
          </div>
        </main>
      </>
    )
  }

  return (
    <>
        {/* Breadcrumb */}
        <div className="pt-24 px-4 sm:px-6 lg:px-8">
          <div className="max-w-6xl mx-auto">
            <div className="flex items-center gap-2 text-sm text-foreground/70 mb-8">
              <Link href="/" className="hover:text-accent">Home</Link>
              <span>/</span>
              <Link href="/category" className="hover:text-accent">Products</Link>
              <span>/</span>
              <span className="text-primary font-semibold">{product.name}</span>
            </div>
          </div>
        </div>

        {/* Product Details Section */}
        <section className="px-4 sm:px-6 lg:px-8 bg-white">
          <div className="max-w-6xl mx-auto">
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-16">
              {/* Product Image */}
              <div className="fade-in-left flex items-center justify-center">
                <div className="relative w-full">
                  {/* <div className="absolute -inset-4 bg-gradient-to-br from-accent/40 to-accent/10 rounded-3xl blur-2xl opacity-75"></div> */}
                  {/* <div className="relative bg-gradient-to-br from-accent/20 to-accent/5 rounded-2xl p-8 flex items-center justify-center h-full"> */}
                    <Image src={process.env.NEXT_PUBLIC_ROOT_URL + product.cover_img} alt={product.name} width={1000} height={1000} className='max-h-full w-full'/>
                  {/* </div> */}
                </div>
              </div>

              {/* Product Info */}
              <div className="fade-in-right space-y-8 h-full justify-center flex flex-col">
                  <p className="text-sm text-accent font-semibold uppercase tracking-wider mb-2">
                    {product.allCat && product.allCat.length > 0
                      ? product.allCat
                          .sort((a, b) => (order[a.type] ?? 99) - (order[b.type] ?? 99))
                          .map((cat) => cat.name)
                          .join(" - ")
                      : ""}
                  </p>
                  <h1 className="text-4xl lg:text-5xl font-bold text-primary mb-4">
                    {product.name}
                  </h1>
                    <DompurifyContent text={product.description || ""} />
                </div>
            </div>
          </div>
        </section>


        <div className='bg-background'>
          <div className="md:py-20 py-10 px-4 sm:px-6 lg:px-8 ">
            <div className="max-w-6xl mx-auto">
              {specsCombined && specsCombined.length > 0 &&
                <SpecificationTable spec={specsCombined} />
              }
            </div>
          </div>
        </div>
    </>
  )
}