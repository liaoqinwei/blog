/*
  Warnings:

  - You are about to drop the column `文章的内容` on the `Article` table. All the data in the column will be lost.
  - You are about to drop the column `文章的创建时间` on the `Article` table. All the data in the column will be lost.
  - You are about to drop the column `文章的名字` on the `Article` table. All the data in the column will be lost.
  - You are about to drop the column `文章的封面图片` on the `Article` table. All the data in the column will be lost.
  - You are about to drop the column `文章的描述` on the `Article` table. All the data in the column will be lost.
  - You are about to drop the column `最后一次修改时间` on the `Article` table. All the data in the column will be lost.
  - You are about to drop the column `访问量` on the `Article` table. All the data in the column will be lost.
  - You are about to drop the column `文章类型` on the `ArticleType` table. All the data in the column will be lost.
  - Added the required column `banner` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `content` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createAt` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `modifyAt` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `ArticleType` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Article" DROP COLUMN "文章的内容",
DROP COLUMN "文章的创建时间",
DROP COLUMN "文章的名字",
DROP COLUMN "文章的封面图片",
DROP COLUMN "文章的描述",
DROP COLUMN "最后一次修改时间",
DROP COLUMN "访问量",
ADD COLUMN     "banner" TEXT NOT NULL,
ADD COLUMN     "content" TEXT NOT NULL,
ADD COLUMN     "createAt" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "description" VARCHAR(128) NOT NULL,
ADD COLUMN     "modifyAt" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "name" VARCHAR(64) NOT NULL,
ADD COLUMN     "visits" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "ArticleType" DROP COLUMN "文章类型",
ADD COLUMN     "name" TEXT NOT NULL;
