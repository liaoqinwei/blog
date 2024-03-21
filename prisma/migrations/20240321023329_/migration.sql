/*
  Warnings:

  - You are about to drop the column `articleId` on the `ArticleType` table. All the data in the column will be lost.
  - Added the required column `articleTypeId` to the `Article` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "ArticleType" DROP CONSTRAINT "ArticleType_articleId_fkey";

-- AlterTable
ALTER TABLE "Article" ADD COLUMN     "articleTypeId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "ArticleType" DROP COLUMN "articleId";

-- AddForeignKey
ALTER TABLE "Article" ADD CONSTRAINT "Article_articleTypeId_fkey" FOREIGN KEY ("articleTypeId") REFERENCES "ArticleType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
