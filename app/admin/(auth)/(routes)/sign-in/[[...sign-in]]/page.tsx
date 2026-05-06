"use client";

import * as z from "zod"
import axios, { AxiosError } from "axios";
import { zodResolver } from "@hookform/resolvers/zod"
import { useForm } from "react-hook-form";
import { toast } from "react-hot-toast";
import { useState } from "react";

import { Form, FormControl, FormField, FormItem, FormLabel, FormMessage } from "@/app/admin/components/ui/form";
import { Input } from "@/components/ui/input";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/app/admin/components/ui/card";
import { Button } from "@/components/ui/button";
import Image from "next/image";

const formSchema = z.object({
  email: z.string().min(1),
  password: z.string().min(1),
});

export default function Page () {

  const [loading, setLoading] = useState(false);

  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      email: "",
      password: ""
    },
  });

  const onSubmit = async (values: z.infer<typeof formSchema>) => {
    try {
      setLoading(true);
      await axios.patch(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}${process.env.NEXT_PUBLIC_ADMIN_USER_LOGIN}`, values);
      window.location.assign(`${process.env.NEXT_PUBLIC_ADMIN_FOLDER_URL}/`);
    } catch (error) {
      if (error instanceof AxiosError) {
        toast.error(error.response?.data || 'An error occurred');
      } else {
        toast.error('An unexpected error occurred');
      }
    } finally {
      setLoading(false);
    }
  };

  return (
      <div className="min-h-screen w-full bg-linear-to-bl from-background via-accent/10 to-accent/15 flex items-center justify-center p-4">
      {/* Subtle background elements */}
      {/* <div className="absolute inset-0 overflow-hidden pointer-events-none">
        <div className="absolute top-20 right-10 w-72 h-72 bg-red-500/20 rounded-full blur-3xl"></div>
        <div className="absolute bottom-20 left-10 w-72 h-72 bg-red-400/15 rounded-full blur-3xl"></div>
      </div> */}

      {/* Login Card */}
      <Card className="w-full max-w-md border-gray-200 bg-white shadow-xl relative z-10">
        <CardHeader className="space-y-6 pb-6">
          <div className="flex justify-center">
              <Image
                src="/images/admin/logo_roadmaster_black.webp"
                alt="Logo Roadmaster"
                width={200}
                height={200}
                className="object-contain h-fit max-w-2/3"
              />
          </div>
          <div className="space-y-2">
            <CardTitle className="text-2xl font-bold text-center text-black">
              Welcome Back
            </CardTitle>
            <p className="text-center text-gray-600 text-sm">
              Sign in to your Roadmaster admin account
            </p>
          </div>
        </CardHeader>

        <CardContent>
          <Form {...form}>
            <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
              <FormField
                control={form.control}
                name="email"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel className="text-black font-semibold">Username</FormLabel>
                    <FormControl>
                      <Input
                        disabled={loading}
                        placeholder="Enter your username"
                        className="bg-gray-50 border-gray-300 text-black placeholder:text-gray-400 focus:border-red-500 focus:ring-red-500"
                        {...field}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              <FormField
                control={form.control}
                name="password"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel className="text-black font-semibold">Password</FormLabel>
                    <FormControl>
                      <Input
                        disabled={loading}
                        type="password"
                        placeholder="••••••••"
                        className="bg-gray-50 border-gray-300 text-black placeholder:text-gray-400 focus:border-red-500 focus:ring-red-500"
                        {...field}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              <Button
                disabled={loading}
                type="submit"
                className="w-full mt-6 bg-red-600 hover:bg-red-700 text-white font-semibold py-2 transition-colors"
              >
                {loading ? 'Signing in...' : 'Sign In'}
              </Button>
            </form>
          </Form>
        </CardContent>
      </Card>
    </div>
  );
};

