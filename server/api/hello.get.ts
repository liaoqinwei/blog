import usePrisma from "~/server/utils/prisma";

export default defineEventHandler(async event => {
  const users = await usePrisma().user.findMany()
    return users
})
