import { Button } from '@/components/ui/button'
import { CheckCircle, Zap, Award, Users } from 'lucide-react'

export default function AboutPage() {
  return (
    <>
        <section className="pt-32 pb-20 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-background">
          <div className="max-w-6xl mx-auto">
            <div className="fade-in-down space-y-6">
              <h1 className="text-5xl md:text-6xl font-bold text-primary leading-tight">
                About Roadmaster
              </h1>
              <p className="text-xl text-foreground/70 max-w-3xl">
                Crafting exceptional audio experiences since our founding, Roadmaster has been at the forefront of speaker innovation and sound engineering.
              </p>
            </div>
          </div>
        </section>

        {/* History Section */}
        <section className="py-24 px-4 sm:px-6 lg:px-8 bg-white">
          <div className="max-w-6xl mx-auto">
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
              <div className="fade-in-left space-y-8">
                <div>
                  <h2 className="text-4xl font-bold text-primary mb-6">Our Story</h2>
                  <p className="text-lg text-foreground/70 leading-relaxed mb-4">
                    Founded with a passion for pristine sound quality, Roadmaster emerged from the vision of audio engineers who believed everyone deserves access to premium audio experiences. What started as a small workshop has evolved into a global leader in speaker innovation.
                  </p>
                  <p className="text-lg text-foreground/70 leading-relaxed">
                    Over the past decade, we've continuously pushed the boundaries of acoustic engineering, combining cutting-edge technology with timeless design principles to deliver speakers that inspire and delight.
                  </p>
                </div>

                <div className="space-y-4">
                  <h3 className="text-2xl font-bold text-primary">Key Milestones</h3>
                  <div className="space-y-3">
                    <div className="flex gap-3">
                      <CheckCircle className="w-6 h-6 text-accent flex-shrink-0 mt-1" />
                      <div>
                        <p className="font-semibold text-primary">2014</p>
                        <p className="text-foreground/70">Roadmaster founded with first speaker prototype</p>
                      </div>
                    </div>
                    <div className="flex gap-3">
                      <CheckCircle className="w-6 h-6 text-accent flex-shrink-0 mt-1" />
                      <div>
                        <p className="font-semibold text-primary">2017</p>
                        <p className="text-foreground/70">Expanded product line with premium series launch</p>
                      </div>
                    </div>
                    <div className="flex gap-3">
                      <CheckCircle className="w-6 h-6 text-accent flex-shrink-0 mt-1" />
                      <div>
                        <p className="font-semibold text-primary">2020</p>
                        <p className="text-foreground/70">Reached 50K+ satisfied customers worldwide</p>
                      </div>
                    </div>
                    <div className="flex gap-3">
                      <CheckCircle className="w-6 h-6 text-accent flex-shrink-0 mt-1" />
                      <div>
                        <p className="font-semibold text-primary">2024</p>
                        <p className="text-foreground/70">Introduced next-generation AI-powered audio systems</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div className="fade-in-right">
                <div className="bg-gradient-to-br from-accent/20 to-accent/5 rounded-2xl p-12 text-center">
                  <p className="text-6xl font-bold text-accent mb-4">10+</p>
                  <p className="text-2xl font-bold text-primary mb-4">Years of Excellence</p>
                  <p className="text-foreground/70 mb-8">
                    A decade of innovation, quality, and dedication to delivering the best audio experiences.
                  </p>
                  <div className="space-y-4 pt-8 border-t border-border">
                    <div>
                      <p className="text-3xl font-bold text-primary">50K+</p>
                      <p className="text-foreground/70">Happy Customers</p>
                    </div>
                    <div>
                      <p className="text-3xl font-bold text-accent">4.8/5</p>
                      <p className="text-foreground/70">Average Rating</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        {/* Values Section */}
        <section className="py-24 px-4 sm:px-6 lg:px-8 bg-gradient-to-b from-secondary to-white relative overflow-hidden">
          <div className="absolute top-20 right-10 w-96 h-96 bg-accent/5 rounded-full blur-3xl opacity-40"></div>
          <div className="absolute bottom-20 left-10 w-80 h-80 bg-accent/5 rounded-full blur-3xl opacity-30"></div>

          <div className="max-w-6xl mx-auto relative z-10">
            <div className="fade-in-down text-center space-y-6 mb-20">
              <h2 className="text-4xl font-bold text-primary">Our Core Values</h2>
              <p className="text-xl text-foreground/70 max-w-3xl mx-auto">
                These principles guide every decision we make and every product we create.
              </p>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
              {[
                {
                  icon: Zap,
                  title: 'Innovation',
                  description: 'We continuously push the boundaries of audio technology and design.'
                },
                {
                  icon: Award,
                  title: 'Quality',
                  description: 'Excellence in every product, every component, every detail.'
                },
                {
                  icon: Users,
                  title: 'Customer Focus',
                  description: 'Your satisfaction and experience is our top priority.'
                },
                {
                  icon: CheckCircle,
                  title: 'Sustainability',
                  description: 'Creating quality products that endure and minimize environmental impact.'
                },
              ].map((value, index) => (
                <div
                  key={value.title}
                  className={`fade-in-up stagger-${index + 1} group`}
                >
                  <div className="relative">
                    <div className="absolute -inset-0.5 bg-gradient-to-br from-accent/30 to-transparent opacity-0 group-hover:opacity-100 rounded-lg transition-opacity duration-300 blur-lg"></div>
                    <div className="relative bg-white rounded-lg p-8 border border-border hover:shadow-2xl transition-all duration-500 h-full">
                      <div className="mb-4 inline-block p-3 bg-accent/10 rounded-lg">
                        <value.icon className="w-6 h-6 text-accent" />
                      </div>
                      <h3 className="text-xl font-bold text-primary mb-3">{value.title}</h3>
                      <p className="text-foreground/70">{value.description}</p>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </section>

        {/* Team Section */}
        <section className="py-24 px-4 sm:px-6 lg:px-8 bg-white">
          <div className="max-w-6xl mx-auto">
            <div className="fade-in-down text-center space-y-6 mb-20">
              <h2 className="text-4xl font-bold text-primary">Passionate About Sound</h2>
              <p className="text-xl text-foreground/70 max-w-3xl mx-auto">
                Our team of dedicated engineers, designers, and audio specialists work tirelessly to bring your audio dreams to life.
              </p>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-12">
              <div className="fade-in-left space-y-6">
                <p className="text-lg text-foreground/70 leading-relaxed">
                  With backgrounds in acoustics, electrical engineering, and industrial design, our team combines technical expertise with a genuine passion for audio.
                </p>
                <p className="text-lg text-foreground/70 leading-relaxed">
                  We're not just building speakers—we're creating experiences that connect people to the music and sounds they love. Every member of our team shares this mission.
                </p>
                <Button className="bg-accent text-accent-foreground hover:bg-accent/90 transition-all duration-300 transform hover:scale-105 w-fit">
                  Join Our Team
                </Button>
              </div>

              <div className="fade-in-right bg-gradient-to-br from-accent/10 to-accent/5 rounded-2xl p-12">
                <div className="space-y-6">
                  <div>
                    <p className="text-4xl font-bold text-accent">100+</p>
                    <p className="text-foreground/70 mt-2">Team Members Worldwide</p>
                  </div>
                  <div>
                    <p className="text-4xl font-bold text-accent">25+</p>
                    <p className="text-foreground/70 mt-2">Patents and Innovations</p>
                  </div>
                  <div>
                    <p className="text-4xl font-bold text-accent">45+</p>
                    <p className="text-foreground/70 mt-2">Industry Awards</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
    </>
  )
}
