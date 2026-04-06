"use client";

import { Plus } from "lucide-react";
import { useParams, useRouter } from "next/navigation";
import { Button } from "@/components/ui/button";
import { DataTable } from "@/app/admin/components/ui/data-table";
import { Heading } from "@/app/admin/components/ui/heading";
import { Separator } from "@/components/ui/separator";
import { ApiList } from "@/app/admin/components/ui/api-list";
import { ProductColumn, columns } from "./columns";
import { ToggleGroup, ToggleGroupItem } from "@/app/admin/components/ui/toggle-group";
import { useState, useMemo } from "react";

interface ProductsClientProps {
  data: ProductColumn[];
  userRole: boolean;
}

export const ProductsClient: React.FC<ProductsClientProps> = ({
  data,
  userRole
}) => {

  const [filter, setFilter] = useState("all");
  const params = useParams();
  const router = useRouter();

  const sentData = useMemo(() => {
    if (filter === "active") {
      return data.filter(item => !item.isArchived);
    }
    if (filter === "archived") {
      return data.filter(item => item.isArchived);
    }
    if (filter === "featured") {
      return data.filter(item => item.isFeatured);
    }
    return data;
  }, [filter, data]);

  return (
    <>
      <div className="flex items-center justify-between">
        <Heading title={`Products (${sentData.length})`} description="Manage products for your brand" />
        <Button
          onClick={() =>
            router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/${params.brandId}/products/new`)
          }
          variant="default"
          className="bg-green-500 text-white hover:bg-green-600 transition-colors"
        >
          <Plus className="mr-2 h-4 w-4" /> Add New
        </Button>
      </div>

      <Separator />

      <ToggleGroup
  type="single"
  value={filter}
  onValueChange={(value) => {
    if (value) setFilter(value)
  }}
>
  <ToggleGroupItem value="all" className="data-[state=on]:bg-foreground/20 data-[state=on]:text-primary">
    All
  </ToggleGroupItem>

  <ToggleGroupItem value="active" className="data-[state=on]:bg-foreground/20 data-[state=on]:text-primary">
    Active
  </ToggleGroupItem>

  <ToggleGroupItem value="archived" className="data-[state=on]:bg-foreground/20 data-[state=on]:text-primary">
    Archived
  </ToggleGroupItem>

  <ToggleGroupItem value="featured" className="data-[state=on]:bg-foreground/20 data-[state=on]:text-primary">
    Featured
  </ToggleGroupItem>
</ToggleGroup>

      <DataTable searchKey="name" columns={columns} data={sentData} />

      {/* {userRole && (
        <>
          <Heading title="API" description="API Calls for Products" />
          <Separator />
          <ApiList entityName="products" entityIdName="productId" />
        </>
      )} */}
    </>
  );
};