import { PrismaMariaDb } from "@prisma/adapter-mariadb"
import { PrismaClient } from "../generated/prisma/client"

declare global {
  var prisma: PrismaClient | undefined
}

const databaseUrl = process.env.DATABASE_URL

if (!databaseUrl) {
  throw new Error("DATABASE_URL is not set")
}

const adapter = new PrismaMariaDb(databaseUrl)
const prismadb = globalThis.prisma || new PrismaClient({ adapter })
if (process.env.NODE_ENV !== "production") globalThis.prisma = prismadb

export default prismadb;
