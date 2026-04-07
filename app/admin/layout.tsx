import { ModalProvider } from '@/app/admin/providers/modal-provider'
import { ToastProvider } from '@/app/admin/providers/toast-provider'
import { Inter } from 'next/font/google'

const font = Inter({ subsets: ['cyrillic'] })

export const metadata = {
  title: 'Admin Dashboard',
  description: 'All Admin Dashboard',
}

export default async function AdminRootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className={`${font.className || ''} overflow-x-hidden bg-foreground/5 `}>
        <div className='bg-foreground/5 h-screen overflow-x-hidden'>
          <ToastProvider />
          <ModalProvider />
          {children}
        </div>
      </body>
    </html>
  )
}
