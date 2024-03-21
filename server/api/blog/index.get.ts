import {defineWrappedResponseHandler} from "~/server/utils/handler";
import usePrisma from "~/server/utils/prisma";

export default defineWrappedResponseHandler(async event => {
  const query = getQuery(event)
  const prisma = usePrisma()
  const data = await prisma.article.findMany({
    include: {
      articleType: {
        select: {
          name: true
        }
      }
    }
  })
  return data
})
