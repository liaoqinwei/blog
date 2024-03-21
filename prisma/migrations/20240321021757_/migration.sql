/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "Article" (
    "id" SERIAL NOT NULL,
    "文章的名字" VARCHAR(64) NOT NULL,
    "文章的描述" VARCHAR(128) NOT NULL,
    "文章的内容" TEXT NOT NULL,
    "文章的创建时间" TIMESTAMP(3) NOT NULL,
    "最后一次修改时间" TIMESTAMP(3) NOT NULL,
    "文章的封面图片" TEXT NOT NULL,
    "访问量" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "Article_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ArticleType" (
    "id" SERIAL NOT NULL,
    "文章类型" TEXT NOT NULL,
    "articleId" INTEGER NOT NULL,

    CONSTRAINT "ArticleType_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ArticleType" ADD CONSTRAINT "ArticleType_articleId_fkey" FOREIGN KEY ("articleId") REFERENCES "Article"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
