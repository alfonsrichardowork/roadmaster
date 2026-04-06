import { Footer } from "@/components/footer"
import { Navigation } from "@/components/navigation"

export default function HomeLayout({
  children,
}: {
  children: React.ReactNode
}) {
    return (
        <main className="min-h-screen bg-background">
            <Navigation />
                {children}
            <Footer />
        </main>
    )
}