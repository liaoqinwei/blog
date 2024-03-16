import {exec} from 'node:child_process'
import process from 'node:process'
import * as util from 'node:util'
import kleur from 'kleur';

const {DATABASE_URL} = process.env
const execPromise = util.promisify(exec);


/*
 * 1、 prisma 生成数据库
 *  (1)验证是否安装postgresql数据库
 *  (2)执行prisma生成数据库表
 * 2、使用pm2进行部署
 *  (1) 执行pm2 start ecosystem.config.js --env production 部署
 */

main()

async function main() {
  try {
    await execPromise('psql -V')
  } catch (e) {
    throw new Error('没有安装postgresql数据库，请先安装')
  }

  try {
     await execPromise('npx prisma migrate deploy')
     await execPromise('npx prisma generate')

    console.log(kleur.green('数据库同步成功'))
  } catch (e) {
    throw new Error(`prisma 同步数据库失败 ${e}`)
  }

  try {
    const {stdout} = await execPromise(`npx cross-env DATABASE_URL=${DATABASE_URL} pm2 restart ./ecosystem.config.cjs --env production`)
    console.log(kleur.green('启动成功'))
    console.log(stdout)
  } catch (e) {
    console.log(e)
    throw new Error(`pm2 部署失败`)
  }

}
