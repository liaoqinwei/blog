import usePrisma from "~/server/utils/prisma";

export default defineEventHandler(async event => {
  const user = await usePrisma().user.create({
    data: {
      name: 'Alice',
      email: `alice${(Math.random()*9000+1000).toFixed()}@prisma.io`,
    },
  })
  return {
    data: 'ok'
  }
})
