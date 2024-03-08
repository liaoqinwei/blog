module.exports= {
  apps: [{
    name: "blog",
    script: './.output/server/index.mjs',
    env_production: {
      NODE_ENV: "production",
      DATABASE_URL: "postgresql://postgres:123@localhost:5432/test?schema=public"
    },
    env_development: {
      NODE_ENV: "development"
    }
  }]
}
