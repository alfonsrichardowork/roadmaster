import { Button } from '@/components/ui/button'
import { MapPin, Phone } from 'lucide-react'
import { getTranslations } from 'next-intl/server'
import Link from 'next/link'

export default async function DownloadPage() {
  const t = await getTranslations('Metadata service page')
  return (
    <section className='min-h-screen bg-white'>
      {/* Hero Section */}
      <div className="pt-32 pb-12 px-4 sm:px-6 lg:px-8 fade-in-down ">
        <div className="max-w-4xl mx-auto">
          <div className="space-y-8 text-center">
            <div className="space-y-4">
              <h1 className="text-5xl md:text-6xl font-bold text-primary leading-tight">
                {t('title')}
              </h1>
            </div>
            
           <Button asChild className="transition-all duration-300 ease-in-out hover:scale-105 hover:shadow-xl shadow-lg bg-accent hover:bg-accent">
              <Link href={'https://forms.gle/6gsqrWT91RZn5gYK7?utm_medium=social&utm_source=heylink.me'} target='_blank'>
                {t('button-warranty')}
              </Link>
            </Button>
          </div>
        </div>
      </div>

      {/* Image Section */}
      <div className="relative overflow-hidden md:pb-20 pb-8">
        <div className="md:max-w-6xl w-screen mx-auto">
          <img 
            src={'/images/roadmaster/service-center-roadmaster.webp'} 
            alt='Service Center Roadmaster' 
            className='w-full h-auto object-contain lg:rounded-lg lg:shadow-xl lg:border border-none' 
          />
        </div>
      </div>

      {/* Contact Information Section */}
      <div className="pb-16 pt-8 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background">
        <div className="max-w-4xl mx-auto">
          <div className="mb-12">
            <h2 className="text-3xl md:text-4xl font-bold text-slate-900 mb-2">Service Center Roadmaster</h2>
            <div className="h-1 w-16 bg-accent rounded-full"></div>
          </div>

          <div className="grid md:grid-cols-2 gap-8">
            {/* Address Card */}
            <div className="flex gap-4 p-6 bg-white rounded-xl hover:border-accent/30 hover:shadow-md transition-all duration-200 items-center">
              <div className="flex-shrink-0">
                <div className="flex items-center justify-center h-10 w-10 rounded-lg bg-accent">
                  <MapPin size={20} className="text-background" />
                </div>
              </div>
              <div className="flex flex-col justify-center">
                <p className="mt-1 text-lg font-medium text-slate-900">
                  Jl. Raya Pilang KM 8<br />Wonoayu Sidoarjo
                </p>
              </div>
            </div>

            {/* Phone Card */}
            <div className="flex gap-4 p-6 bg-white rounded-xl hover:border-accent/30 hover:shadow-md transition-all duration-200 items-center">
              <div className="flex-shrink-0">
                <div className="flex items-center justify-center h-10 w-10 rounded-lg bg-accent">
                  <Phone size={20} className="text-background" />
                </div>
              </div>
              <div className="flex flex-col justify-center">
                <Link 
                  href={'tel:085101696537'}
                  className='mt-1 text-lg font-medium text-foreground hover:text-blue-700 hover:underline transition-colors'
                >
                  085101696537
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}
