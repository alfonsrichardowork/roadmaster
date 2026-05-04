import { NextRequest, NextResponse } from 'next/server'
import nodemailer from 'nodemailer';

interface ContactFormData {
  name: string
  email: string
  phone: string
  subject: string
  message: string
}

// Rate limiting: Simple in-memory store (replace with Redis in production)
const requestCounts = new Map<string, { count: number; resetTime: number }>()
const RATE_LIMIT_WINDOW = 60 * 60 * 1000 // 1 hour
const MAX_REQUESTS_PER_HOUR = 5

function checkRateLimit(ip: string): boolean {
  const now = Date.now()
  const record = requestCounts.get(ip)

  if (!record || now > record.resetTime) {
    requestCounts.set(ip, { count: 1, resetTime: now + RATE_LIMIT_WINDOW })
    return true
  }

  if (record.count < MAX_REQUESTS_PER_HOUR) {
    record.count++
    return true
  }

  return false
}

// Sanitize input to prevent injection attacks
function sanitizeInput(input: string): string {
  return input
    .trim()
    .slice(0, 1000) // Limit length
    .replace(/[<>]/g, '') // Remove angle brackets
    .replace(/javascript:/gi, '') // Remove javascript: protocol
}

// Create email transporter
// const transporter = nodemailer.createTransport({
//   service: 'gmail',
//   auth: {
//     user: process.env.GMAIL_USER,
//     pass: process.env.GMAIL_APP_PASSWORD,
//   },
// })

const transporter = nodemailer.createTransport({
  host: 'mail.sbe2group.com',
  port: 587,
  secure: false, // Use STARTTLS
  auth: {
    user: process.env.GMAIL_USER,
    pass: process.env.GMAIL_APP_PASSWORD,
  },
})

export async function POST(request: NextRequest, props: { params: Promise<{ lang: string }> }) {
  const params = await props.params;
  try {
    // Security: Check rate limiting
    const ip = request.headers.get('x-forwarded-for') || request.headers.get('x-real-ip') || 'unknown'
    if (!checkRateLimit(ip)) {
      return NextResponse.json(
        { error: 'Too many requests. Please try again later.' },
        { status: 429 }
      )
    }

    // Security: Validate request origin (CORS)
    const origin = request.headers.get('origin')
    const allowedOrigins = [process.env.NEXT_PUBLIC_ROOT_URL, 'http://localhost:3003']
    if (origin && !allowedOrigins.includes(origin)) {
      return NextResponse.json(
        { error: 'Unauthorized origin' },
        { status: 403 }
      )
    }

    const body: ContactFormData = await request.json()

    // Validate required fields
    if (!body.name || !body.email || !body.subject || !body.message) {
      return NextResponse.json(
        { error: 'Missing required fields' },
        { status: 400 }
      )
    }

    // Validate email format with stricter regex
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
    if (!emailRegex.test(body.email) || body.email.length > 254) {
      return NextResponse.json(
        { error: 'Invalid email format' },
        { status: 400 }
      )
    }

    // Sanitize all inputs
    const sanitizedData = {
      name: sanitizeInput(body.name),
      email: sanitizeInput(body.email),
      phone: sanitizeInput(body.phone),
      subject: sanitizeInput(body.subject),
      message: sanitizeInput(body.message),
    }

    // Verify environment variables are set
    if (!process.env.GMAIL_USER || !process.env.GMAIL_APP_PASSWORD) {
      console.error('Gmail credentials not configured')
      return NextResponse.json(
        { error: 'Email service is not configured' },
        { status: 500 }
      )
    }

    // Prepare email content
    const mailOptions = {
      from: process.env.GMAIL_USER,
      to: process.env.GMAIL_USER, // Send to your Gmail address
      subject: `Contact Form Website Roadmaster: ${sanitizedData.subject}`,
      html: `
        <p><strong>Name:</strong> ${sanitizedData.name}</p>
        <p><strong>Email:</strong> ${sanitizedData.email}</p>
        <p><strong>Phone:</strong> ${sanitizedData.phone || 'Not provided'}</p>
        <p><strong>Subject:</strong> ${sanitizedData.subject}</p>
        <hr />
        <p><strong>Message:</strong></p>
        <p>${sanitizedData.message.replace(/\n/g, '<br>')}</p>
      `,
      replyTo: sanitizedData.email,
    }

    // Send email
    await transporter.sendMail(mailOptions)

    // Optional: Send confirmation email to user
    const confirmationMail = {
      from: process.env.GMAIL_USER,
      to: sanitizedData.email,
      subject: params.lang === 'id' ? 'Kami telah menerima pesanmu!' : 'We received your message!',
      html: params.lang === 'id' ? 
      `
        <h2>Terima kasih telah menghubungi Roadmaster!</h2>
        <p>Halo ${sanitizedData.name},</p>
        <p>Kami telah menerima pesan Anda dan akan segera menghubungi Anda kembali.</p>
        <p>Salam hormat,<br />Tim Roadmaster</p>
      `
      :
      `
        <h2>Thank you for contacting Roadmaster!</h2>
        <p>Hi ${sanitizedData.name},</p>
        <p>We have received your message and will get back to you soon.</p>
        <p>Best regards,<br />Roadmaster Team</p>
      `,
    }

    await transporter.sendMail(confirmationMail)

    // Success response
    return NextResponse.json(
      { success: true, message: 'Your message has been sent successfully' },
      { status: 200 }
    )
  } catch (error) {
    console.error('Contact form error:', error)
    return NextResponse.json(
      { error: 'Failed to process your request' },
      { status: 500 }
    )
  }
}
