// import this after install `@mdi/font` package
import '@mdi/font/css/materialdesignicons.css'

import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import colors from 'vuetify/util/colors'


export default defineNuxtPlugin((app) => {
  const vuetify = createVuetify({
    theme:{
      themes:{
        light:{
          dark:false,
          colors:{
            primary:colors.red.base,
            secondary:colors.red.lighten1,
            surface:colors.yellow.lighten2,
          }
        }
      }
    }
  })
  app.vueApp.use(vuetify)
})
