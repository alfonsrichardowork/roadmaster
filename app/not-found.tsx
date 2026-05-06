import Link from 'next/link';
import { Home } from 'lucide-react';
import { Inter } from 'next/font/google';
import Image from 'next/image';
const font = Inter({ subsets: ['latin'] })

export const metadata = {
  title: 'Roadmaster Page Not Found',
}

export default function NotFound() {
  return (
    <html>
      <body className={`${font.className || ''} overflow-x-hidden min-h-screen bg-background flex items-center justify-center px-4`}>
      <div className="flex flex-col items-center text-center space-y-6">
        {/* Logo */}
        <Image
          src="/images/roadmaster/logo_only_roadmaster_black.webp"
          alt="Roadmaster Logo"
          className="h-10 w-auto object-contain"
          width={100}
          height={100}
        />

        {/* 404 Heading */}
        <div>
          <h1 className="text-6xl md:text-7xl font-bold text-foreground mb-2">
            404
          </h1>
          <p className="text-xl text-muted-foreground">
            Page not found
          </p>
        </div>


        {/* Description */}
        <p className="text-muted-foreground max-w-sm">
          The page you&apos;re looking for doesn&apos;t exist or has been moved.
        </p>

        {/* Button */}
        <Link
          href="/"
          className="inline-flex items-center gap-2 px-6 py-3 bg-primary text-primary-foreground rounded-lg font-semibold hover:bg-primary/90 transition-colors"
        >
          <Home className="w-5 h-5" />
          Go Home
        </Link>
      </div>
      </body>
    </html>
  );
}
