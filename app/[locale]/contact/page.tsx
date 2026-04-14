'use client'

import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Mail, Phone, MapPin, Clock, Send } from 'lucide-react'
import { useState } from 'react'

export default function ContactPage() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    subject: '',
    message: '',
  })
  const [submitted, setSubmitted] = useState(false)

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault()
    setSubmitted(true)
    setFormData({ name: '', email: '', phone: '', subject: '', message: '' })
    setTimeout(() => setSubmitted(false), 3000)
  }

  const contactInfo = [
    {
      icon: Mail,
      title: 'Email Support',
      details: 'support@roadmaster.com',
      description: 'We respond within 24 hours',
    },
    {
      icon: Phone,
      title: 'Phone Support',
      details: '+1 (555) 123-4567',
      description: 'Available Monday-Friday, 9AM-6PM EST',
    },
    {
      icon: MapPin,
      title: 'Headquarters',
      details: '123 Audio Lane, Tech City, TC 12345',
      description: 'Visit our showroom',
    },
    {
      icon: Clock,
      title: 'Support Hours',
      details: 'Mon-Fri: 9AM-6PM EST',
      description: 'Email support available 24/7',
    },
  ]

  return (
    <>
        {/* Hero Section */}
        <section className="pt-32 pb-20 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background">
          <div className="max-w-6xl mx-auto">
            <div className="fade-in-down space-y-6 text-center">
              <h1 className="text-5xl md:text-6xl font-bold text-primary leading-tight">
                Contact Roadmaster
              </h1>
              <p className="text-xl text-foreground/70 max-w-3xl mx-auto">
                Have questions? We&apos;re here to help. Reach out to our team and we&apos;ll get back to you as soon as possible.
              </p>
            </div>
          </div>
        </section>

        {/* Contact Info Cards */}
        <section className="py-24 px-4 sm:px-6 lg:px-8 bg-white relative overflow-hidden">
          <div className="absolute top-20 right-10 w-96 h-96 bg-accent/5 rounded-full blur-3xl opacity-40"></div>
          <div className="absolute bottom-20 left-10 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-30"></div>

          <div className="max-w-6xl mx-auto relative z-10">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
              {contactInfo.map((info, index) => (
                <div key={info.title} className={`fade-in-up stagger-${index + 1} group`}>
                  <div className="relative">
                    <div className="absolute -inset-0.5 bg-gradient-to-br from-accent/30 to-transparent opacity-0 group-hover:opacity-100 rounded-lg transition-opacity duration-300 blur-lg"></div>

                    <div className="relative bg-gradient-to-br from-secondary to-background rounded-lg p-8 border border-border hover:shadow-2xl transition-all duration-500 h-full">
                      <div className="inline-block p-3 bg-accent/10 rounded-lg mb-4">
                        <info.icon className="w-6 h-6 text-accent" />
                      </div>
                      <h3 className="text-xl font-bold text-primary mb-2">{info.title}</h3>
                      <p className="font-semibold text-foreground mb-2">{info.details}</p>
                      <p className="text-sm text-foreground/70">{info.description}</p>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Contact Form Section */}
        <section className="py-24 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-background to-secondary">
          <div className="max-w-3xl mx-auto">
            <div className="fade-in-down text-center space-y-6 mb-16">
              <h2 className="text-4xl font-bold text-primary">Send us a Message</h2>
              <p className="text-lg text-foreground/70">
                Fill out the form below and our team will get back to you shortly.
              </p>
            </div>

            <div className="fade-in-up">
              <div className="relative">
                <div className="absolute -inset-1 bg-gradient-to-br from-accent/30 to-transparent opacity-75 rounded-2xl blur-xl"></div>

                <form onSubmit={handleSubmit} className="relative bg-white rounded-2xl p-8 md:p-12 border border-accent/20 shadow-xl space-y-6">
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div className="space-y-2">
                      <label className="block text-sm font-semibold text-primary">Full Name</label>
                      <Input
                        type="text"
                        placeholder="John Doe"
                        value={formData.name}
                        onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                        required
                        className="bg-secondary border-border text-foreground placeholder:text-foreground/40"
                      />
                    </div>
                    <div className="space-y-2">
                      <label className="block text-sm font-semibold text-primary">Email Address</label>
                      <Input
                        type="email"
                        placeholder="john@example.com"
                        value={formData.email}
                        onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                        required
                        className="bg-secondary border-border text-foreground placeholder:text-foreground/40"
                      />
                    </div>
                  </div>

                  <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div className="space-y-2">
                      <label className="block text-sm font-semibold text-primary">Phone Number</label>
                      <Input
                        type="tel"
                        placeholder="+1 (555) 123-4567"
                        value={formData.phone}
                        onChange={(e) => setFormData({ ...formData, phone: e.target.value })}
                        className="bg-secondary border-border text-foreground placeholder:text-foreground/40"
                      />
                    </div>
                    <div className="space-y-2">
                      <label className="block text-sm font-semibold text-primary">Subject</label>
                      <Input
                        type="text"
                        placeholder="How can we help?"
                        value={formData.subject}
                        onChange={(e) => setFormData({ ...formData, subject: e.target.value })}
                        required
                        className="bg-secondary border-border text-foreground placeholder:text-foreground/40"
                      />
                    </div>
                  </div>

                  <div className="space-y-2">
                    <label className="block text-sm font-semibold text-primary">Message</label>
                    <textarea
                      placeholder="Tell us more about your inquiry..."
                      value={formData.message}
                      onChange={(e) => setFormData({ ...formData, message: e.target.value })}
                      required
                      rows={6}
                      className="w-full bg-secondary border border-border rounded-lg px-4 py-3 text-foreground placeholder:text-foreground/40 focus:outline-none focus:ring-2 focus:ring-accent/50 resize-none"
                    />
                  </div>

                  <Button
                    type="submit"
                    disabled={submitted}
                    className="w-full bg-accent text-accent-foreground hover:bg-accent/90 py-6 text-lg font-semibold transition-all duration-300 transform hover:scale-105 active:scale-95 disabled:opacity-90 flex items-center justify-center gap-2"
                  >
                    <Send className="w-5 h-5" />
                    {submitted ? 'Message Sent!' : 'Send Message'}
                  </Button>

                  {submitted && (
                    <p className="text-center text-green-600 font-semibold">
                      Thank you! We&apos;ll be in touch soon.
                    </p>
                  )}
                </form>
              </div>
            </div>
          </div>
        </section>
    </>
  )
}
