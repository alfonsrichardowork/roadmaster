'use client'

import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { useState } from 'react'
import { Mail, CheckCircle } from 'lucide-react'

export function Newsletter() {
  const [email, setEmail] = useState('')
  const [submitted, setSubmitted] = useState(false)

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault()
    setSubmitted(true)
    setEmail('')
    setTimeout(() => setSubmitted(false), 3000)
  }

  return (
    <section className="py-24 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background relative overflow-hidden">
      {/* Animated background elements */}
      <div className="absolute top-20 right-20 w-96 h-96 bg-accent/10 rounded-full blur-3xl opacity-60 animate-pulse"></div>
      <div className="absolute bottom-20 left-10 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-40"></div>

      <div className="max-w-3xl mx-auto relative z-10">
        <div className="fade-in-down relative">
          {/* Glow effect */}
          <div className="absolute -inset-1 bg-gradient-to-r from-accent/30 via-accent/20 to-accent/30 opacity-75 rounded-2xl blur-xl"></div>
          
          <div className="relative bg-gradient-to-br from-primary to-primary/90 rounded-2xl p-12 text-center border border-primary/20 backdrop-blur-xl shadow-2xl">
            {/* Icon */}
            <div className="inline-block p-3 bg-accent/20 rounded-full mb-6 scale-in">
              <Mail className="w-8 h-8 text-accent" />
            </div>

            <h2 className="text-4xl lg:text-5xl font-bold text-white mb-4 leading-tight">
              Stay Updated with Roadmaster
            </h2>
            <p className="text-white/80 mb-10 text-lg max-w-xl mx-auto">
              Get exclusive updates, product launches, and special offers delivered to your inbox.
            </p>

            <form onSubmit={handleSubmit} className="flex flex-col sm:flex-row gap-3 mb-6">
              <div className="flex-1 relative group">
                <Input
                  type="email"
                  placeholder="Enter your email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  required
                  className="bg-white/95 border-2 border-white/20 text-foreground placeholder:text-foreground/40 flex-1 h-12 transition-all duration-300 group-focus-within:border-accent/50 group-focus-within:bg-white"
                />
              </div>
              <Button
                type="submit"
                disabled={submitted}
                className="bg-accent text-primary hover:bg-accent/90 px-8 h-12 whitespace-nowrap transition-all duration-300 transform hover:scale-105 active:scale-95 disabled:opacity-90 flex items-center justify-center gap-2"
              >
                {submitted ? (
                  <>
                    <CheckCircle className="w-4 h-4" />
                    Subscribed!
                  </>
                ) : (
                  'Subscribe'
                )}
              </Button>
            </form>

            <p className="text-sm text-white/70">
              We respect your privacy. Unsubscribe at any time.
            </p>
          </div>
        </div>
      </div>
    </section>
  )
}
