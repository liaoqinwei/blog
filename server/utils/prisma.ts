import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient({
  log: ['info'],
})

export default function usePrisma(){
  return prisma
}

