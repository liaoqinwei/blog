// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  modules: [
    '@nuxt/test-utils/module'
  ],
  devtools: {
    enabled: true,
    timeline: {
      enabled: true
    }
  }
})
