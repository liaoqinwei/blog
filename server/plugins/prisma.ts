import usePrisma from "~/server/utils/prisma";

export default defineNitroPlugin((nitroApp) => {
  let requestN = 0

  nitroApp.hooks.hook('request', async () => {
    if (requestN === 0)
      await usePrisma().$connect()
    requestN++
  })

  nitroApp.hooks.hook('afterResponse', async () => {
    requestN--
    process.nextTick(() => {
      if (requestN === 0) usePrisma().$disconnect()
    });
  })
})
