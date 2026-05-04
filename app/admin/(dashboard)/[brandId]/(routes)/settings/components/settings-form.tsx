"use client"

import * as z from "zod"
import axios from "axios"
import { zodResolver } from "@hookform/resolvers/zod"
import { useForm } from "react-hook-form"
import { toast } from "react-hot-toast"
import { File, Trash } from "lucide-react"
import { useParams, useRouter } from "next/navigation"
import { useEffect, useState } from "react"

import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/app/admin/components/ui/form"
import { Separator } from "@/components/ui/separator"
import { Heading } from "@/app/admin/components/ui/heading"
import { AlertModal } from "@/app/admin/components/modals/alert-modal"
import { ApiAlert } from "@/app/admin/components/ui/api-alert"
import { useOrigin } from "@/app/admin/hooks/use-origin"
import { brand } from "@prisma/client"
import { MAX_SIZE } from "@/app/admin/model/model"
import { uploadProductDatasheet } from "@/app/admin/upload-product-datasheet"
import Link from "next/link"

const formSchema = z.object({
  name: z.string().min(2),
  catalogues: z.string().optional(),
});

type SettingsFormValues = z.infer<typeof formSchema>

interface SettingsFormProps {
  initialData: brand;
};

export const SettingsForm: React.FC<SettingsFormProps> = ({
  initialData
}) => {
  const params = useParams();
  const router = useRouter();
  const origin = useOrigin();
  const [datasheetUrl, setDatasheetUrl] = useState<string>('');
  const [datasheet, setDatasheet] = useState<File>();

  const [open, setOpen] = useState(false);
  const [loading, setLoading] = useState(false);

  const form = useForm<SettingsFormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: initialData || {
      name: '',
      catalogues: '',
    }
  });

  useEffect(() => {
    const fetchData = async () => {
      if (initialData && initialData.catalogues) {
        setDatasheetUrl(initialData.catalogues);
      }
      else{
        setDatasheetUrl('')
      }
    };
    
    fetchData().catch((error) => {
      console.error("Error fetching data: ", error);
    });
  }, [initialData, initialData?.catalogues]);
  
  //CATALOGUE
  const handleCatalogueChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if(!file) return
    if (file.size > MAX_SIZE) {
      alert("File size must be less than 2MB");
      e.target.value = "";
      return;
    }
    setDatasheet(file);
  };

  const deleteCatalogue = async () => {
    setDatasheetUrl('')
  }
  
  async function handleCatalogueUpload(file: File): Promise<string> {
    if (file) {
      let updatedCatalogue = datasheetUrl ?? ''
      try {
        const formData = new FormData();
        formData.append('file', file);
  
        const url = await uploadProductDatasheet(formData);
        updatedCatalogue = url;
        return updatedCatalogue;
      } catch (error) {
        console.error("Error uploading catalogue:", error);
        return '';
      }
    }
    return '';
  }

  const onSubmit = async (data: SettingsFormValues) => {
    try {
      setLoading(true);

      if (datasheet) {
        data.catalogues = await handleCatalogueUpload(datasheet)
      }
      else{
        data.catalogues = datasheetUrl
      }

      const API=`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}${process.env.NEXT_PUBLIC_ADMIN_EDIT_BRAND}`;
      //@ts-ignore
      const API_EDITED = API.replace('{brandId}', params.brandId)
      const response = await axios.patch(API_EDITED, data);
      if(response.data === 'expired_session'){
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/`);
        router.refresh();
        toast.error("Session expired, please login again")
      }
      else if(response.data === 'invalid_token'){
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/`);
        router.refresh();
        toast.error("API Token Invalid, please login again")
      }
      else if(response.data === 'not_admin'){
        router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/`);
        router.refresh();
        toast.error("Unauthorized!")
      }
      else{
        router.refresh();
        toast.success('Brand updated.');
      }
    } catch (error: any) {
      toast.error('Something went wrong.');
    } finally {
      setLoading(false);
    }
  };

  const onDelete = async () => {
    try {
      setLoading(true);
      const API=`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}${process.env.NEXT_PUBLIC_ADMIN_EDIT_BRAND}`;
      //@ts-ignore
      const API_EDITED = API.replace('{brandId}', params.brandId)
      await axios.delete(API_EDITED);
      router.refresh();
      router.push(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/`);
      toast.success('Brand deleted.');
    } catch (error: any) {
      toast.error('Make sure you removed all products and categories first.');
    } finally {
      setLoading(false);
      setOpen(false);
    }
  }

  return (
    <>
    <AlertModal 
      isOpen={open} 
      onClose={() => setOpen(false)}
      onConfirm={onDelete}
      loading={loading}
    />
     <div className="flex items-center justify-between">
        <Heading title="Brand settings" description="Manage brand preferences" />
        <Button
          disabled={loading}
          variant="destructive"
          size="sm"
          onClick={() => setOpen(true)}
        >
          <Trash className="h-4 w-4 text-background" />
        </Button>
      </div>
      <Separator />
      <Form {...form}>
        <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-8 w-full">
  
        <div className="grid grid-cols-2 gap-8">

          <div>
            <div className="text-sm font-semibold pb-1">Catalogue</div>
            <div className="flex items-center space-x-4">
              {datasheetUrl !== '' && (
                <>
                  <Link
                    href={datasheetUrl}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="text-primary font-medium hover:underline transition-colors whitespace-nowrap flex items-center gap-2"
                  >
                    <File width={20} height={20}/> View File
                  </Link>
                  
                  <Button
                    variant={"destructive"}
                    onClick={() => deleteCatalogue()}
                  >
                    <Trash width={20} height={20} className="text-background" />
                  </Button>
                </>
              )}
              {datasheetUrl === '' && (
                <Input
                  type="file"
                  accept=".pdf"
                  name="file"
                  onChange={(e) =>
                    e.target.files && handleCatalogueChange(e)
                  }
                  disabled={loading}
                  className="border bg-white border-gray-300 p-2 rounded-md"
                />
              )}
            </div>
          </div>

            <FormField
              control={form.control}
              name="name"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Name</FormLabel>
                  <FormControl>
                    <Input disabled={loading} placeholder="Brand name" className="bg-background" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />
          </div>
          <Button disabled={loading} className="ml-auto" type="submit" variant={'default'}>
            Save changes
          </Button>
        </form>
      </Form>
    </>
  );
};
