'use client'
import { Button } from '@/components/ui/button'
import { Star, ShoppingCart, Heart, Share2, Check } from 'lucide-react'
import Link from 'next/link'

interface ProductDetailPageProps {
  params: {
    id: string
  }
}

const productData = {
  1: {
    name: 'Studio Pro',
    category: 'Portable Speakers',
    price: 299.99,
    rating: 4.9,
    reviews: 340,
    emoji: '🔊',
    image: '/products/studio-pro.jpg',
    description: 'Premium wireless speaker with 360° sound',
    longDescription: 'The Studio Pro is our flagship portable speaker, engineered for audiophiles and music enthusiasts who demand pristine sound quality on the go. With advanced acoustic technology and 40-hour battery life, this speaker delivers concert-hall acoustics wherever you are.',
    specs: {
      'Driver Size': '60mm x 2 + 30mm tweeter',
      'Output Power': '30W RMS',
      'Frequency Response': '20Hz - 20kHz',
      'Connectivity': 'Bluetooth 5.3, 3.5mm AUX, USB-C',
      'Battery Life': '40 hours',
      'Charging Time': '3 hours',
      'Dimensions': '280mm x 85mm x 95mm',
      'Weight': '850g',
      'Water Resistance': 'IPX7',
    },
    features: [
      '360° directional sound',
      'Advanced noise cancellation',
      '40-hour battery life',
      'Rapid charging technology',
      'Premium materials and finish',
      'Bluetooth 5.3 connectivity',
      'Multi-device pairing',
      'Built-in microphone for calls',
    ],
    inStock: true,
  },
  2: {
    name: 'Home Theater X1',
    category: 'Home Theater',
    price: 899.99,
    rating: 4.8,
    reviews: 215,
    emoji: '📻',
    description: 'Complete surround sound system setup',
    longDescription: 'Transform your living room into a cinema with the Home Theater X1. This complete system includes a center channel, satellite speakers, and subwoofer for immersive 5.1 surround sound.',
    specs: {
      'Channels': '5.1 Surround',
      'Subwoofer Size': '10 inch driver',
      'Frequency Response': '20Hz - 40kHz',
      'Impedance': '8 Ohms',
      'Maximum SPL': '105dB',
      'Connection': 'Optical, Coaxial, HDMI',
      'Cabinet Material': 'MDF wood',
      'Finish': 'Matte black',
    },
    features: [
      '5.1 surround sound system',
      '10-inch powered subwoofer',
      'Premium speaker drivers',
      'Multiple connectivity options',
      'Wall-mountable design',
      'Theater-grade performance',
      'Easy calibration tools',
      'Lifetime warranty on drivers',
    ],
    inStock: true,
  },
  3: {
    name: 'Creator\'s Choice',
    category: 'Studio Monitors',
    price: 599.99,
    rating: 4.9,
    reviews: 180,
    emoji: '🎙️',
    description: 'Professional studio monitoring speakers',
    longDescription: 'Designed for content creators and audio professionals, the Creator\'s Choice delivers accurate, reference-grade sound perfect for mixing, mastering, and content production.',
    specs: {
      'Configuration': '3-way active monitor',
      'Woofer': '8-inch',
      'Midrange': '2-inch',
      'Tweeter': '1-inch',
      'Frequency Response': '20Hz - 20kHz',
      'Maximum SPL': '108dB SPL',
      'Input Latency': '<1ms',
      'Power': '150W per monitor',
    },
    features: [
      'Professional-grade accuracy',
      'Flat frequency response',
      'Low-latency monitoring',
      'Multiple input options',
      'Room correction software',
      'Premium acoustic design',
      'Studio-grade construction',
      'Industry-standard choice',
    ],
    inStock: true,
  },
  4: {
    name: 'Outdoor Blaster',
    category: 'Outdoor Speakers',
    price: 399.99,
    rating: 4.7,
    reviews: 290,
    emoji: '🏖️',
    description: 'Rugged waterproof outdoor speaker',
    longDescription: 'Built for adventure, the Outdoor Blaster is engineered to withstand the elements. With extreme weather resistance and powerful sound, it\'s perfect for patios, gardens, and outdoor activities.',
    specs: {
      'Water Rating': 'IPX8 (submersible)',
      'Dust Rating': 'IP6X',
      'Operating Temp': '-10°C to 50°C',
      'Driver': '60mm x 2',
      'Output Power': '25W',
      'Frequency Response': '50Hz - 20kHz',
      'Battery Life': '32 hours',
      'Material': 'Rugged polymer shell',
    },
    features: [
      'Fully waterproof and submersible',
      'Extreme weather resistant',
      'Military-grade durability',
      '32-hour battery life',
      'Powerful 25W output',
      'Floating design',
      'Adventure-ready construction',
      'Vibrant color options',
    ],
    inStock: true,
  },
}

export default function ProductDetailPage({ params }: ProductDetailPageProps) {
  const product = productData[parseInt(params.id) as keyof typeof productData]

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
        <div className="pt-24 px-4 sm:px-6 lg:px-8 bg-background">
          <div className="max-w-6xl mx-auto">
            <div className="flex items-center gap-2 text-sm text-foreground/70 mb-8">
              <Link href="/" className="hover:text-accent">Home</Link>
              <span>/</span>
              <Link href="/products" className="hover:text-accent">Products</Link>
              <span>/</span>
              <span className="text-primary font-semibold">{product.name}</span>
            </div>
          </div>
        </div>

        {/* Product Details Section */}
        <section className="py-20 px-4 sm:px-6 lg:px-8 bg-white">
          <div className="max-w-6xl mx-auto">
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-16">
              {/* Product Image */}
              <div className="fade-in-left flex items-center justify-center">
                <div className="relative w-full aspect-square max-w-md">
                  <div className="absolute -inset-4 bg-gradient-to-br from-accent/40 to-accent/10 rounded-3xl blur-2xl opacity-75"></div>
                  <div className="relative bg-gradient-to-br from-accent/20 to-accent/5 rounded-2xl p-8 flex items-center justify-center h-full">
                    <span className="text-9xl">{product.emoji}</span>
                  </div>
                </div>
              </div>

              {/* Product Info */}
              <div className="fade-in-right space-y-8">
                <div>
                  <p className="text-sm text-accent font-semibold uppercase tracking-wider mb-2">
                    {product.category}
                  </p>
                  <h1 className="text-4xl lg:text-5xl font-bold text-primary mb-4">
                    {product.name}
                  </h1>
                  <p className="text-lg text-foreground/70">
                    {product.description}
                  </p>
                </div>

                {/* Rating */}
                <div className="flex items-center gap-4">
                  <div className="flex gap-1">
                    {[...Array(5)].map((_, i) => (
                      <Star
                        key={i}
                        size={20}
                        className={i < Math.floor(product.rating) ? 'fill-accent text-accent' : 'text-border'}
                      />
                    ))}
                  </div>
                  <span className="text-foreground/70">
                    {product.rating} rating ({product.reviews} reviews)
                  </span>
                </div>

                {/* Price */}
                <div className="space-y-2">
                  <p className="text-4xl font-bold text-primary">${product.price}</p>
                  {product.inStock ? (
                    <p className="flex items-center gap-2 text-green-600 font-semibold">
                      <Check className="w-5 h-5" />
                      In Stock
                    </p>
                  ) : (
                    <p className="text-red-600 font-semibold">Out of Stock</p>
                  )}
                </div>

                {/* Description */}
                <p className="text-lg text-foreground/70 leading-relaxed">
                  {product.longDescription}
                </p>

                {/* Actions */}
                <div className="flex flex-col sm:flex-row gap-3">
                  <Button className="flex-1 bg-accent text-accent-foreground hover:bg-accent/90 gap-2 py-6 text-lg">
                    <ShoppingCart className="w-5 h-5" />
                    Add to Cart
                  </Button>
                  <Button variant="outline" className="px-6 py-6">
                    <Heart className="w-5 h-5" />
                  </Button>
                  <Button variant="outline" className="px-6 py-6">
                    <Share2 className="w-5 h-5" />
                  </Button>
                </div>

                {/* Info boxes */}
                <div className="grid grid-cols-2 gap-4 pt-8 border-t border-border">
                  <div className="space-y-1">
                    <p className="text-sm text-foreground/70">Free Shipping</p>
                    <p className="font-semibold text-primary">On orders over $100</p>
                  </div>
                  <div className="space-y-1">
                    <p className="text-sm text-foreground/70">2-Year Warranty</p>
                    <p className="font-semibold text-primary">Full coverage included</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        {/* Specifications Section */}
        <section className="py-24 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background">
          <div className="max-w-6xl mx-auto">
            <h2 className="text-3xl font-bold text-primary mb-12 fade-in-down">Technical Specifications</h2>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
              <div className="fade-in-left">
                <div className="bg-white rounded-lg border border-border p-8 space-y-4">
                  {Object.entries(product.specs).slice(0, 4).map(([key, value]) => (
                    <div key={key} className="flex justify-between items-start">
                      <span className="font-semibold text-primary">{key}:</span>
                      <span className="text-foreground/70 text-right">{value}</span>
                    </div>
                  ))}
                </div>
              </div>

              <div className="fade-in-right">
                <div className="bg-white rounded-lg border border-border p-8 space-y-4">
                  {Object.entries(product.specs).slice(4).map(([key, value]) => (
                    <div key={key} className="flex justify-between items-start">
                      <span className="font-semibold text-primary">{key}:</span>
                      <span className="text-foreground/70 text-right">{value}</span>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </section>

        {/* Features Section */}
        <section className="py-24 px-4 sm:px-6 lg:px-8 bg-white">
          <div className="max-w-6xl mx-auto">
            <h2 className="text-3xl font-bold text-primary mb-12 fade-in-down">Key Features</h2>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
              {product.features.map((feature, index) => (
                <div key={feature} className={`fade-in-up stagger-${(index % 2) + 1} flex gap-4`}>
                  <div className="flex-shrink-0">
                    <Check className="w-6 h-6 text-accent mt-1" />
                  </div>
                  <div>
                    <p className="font-semibold text-primary">{feature}</p>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Related Products */}
        <section className="py-24 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-white">
          <div className="max-w-6xl mx-auto">
            <h2 className="text-3xl font-bold text-primary mb-12 fade-in-down">You May Also Like</h2>

            <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
              {[1, 2, 3].map((id) => (
                <div key={id} className={`fade-in-up stagger-${id}`}>
                  <Link href={`/products/${id}`} className="block group">
                    <div className="bg-white rounded-lg border border-border overflow-hidden hover:shadow-lg transition-all duration-300">
                      <div className="h-40 bg-gradient-to-br from-accent/20 to-accent/5 flex items-center justify-center">
                        <span className="text-5xl">🔊</span>
                      </div>
                      <div className="p-6">
                        <h3 className="font-bold text-primary mb-2 group-hover:text-accent">Related Product</h3>
                        <p className="text-sm text-foreground/70 mb-4">From $199.99</p>
                        <Button variant="outline" className="w-full">View</Button>
                      </div>
                    </div>
                  </Link>
                </div>
              ))}
            </div>
          </div>
        </section>
    </>
  )
}
