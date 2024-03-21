<template>
  <v-layout>
    <v-app-bar scroll-behavior="hide">
      <template v-slot:prepend v-if="route.fullPath!=='/'">
        <v-btn icon="mdi-chevron-left" @click="()=>router.back()">
        </v-btn>
      </template>

      <v-app-bar-title>{{ title }}</v-app-bar-title>

      <template v-slot:append>
        <v-menu location="bottom">
          <template v-slot:activator="{ props }">
            <v-app-bar-nav-icon v-bind="props"/>
          </template>

          <v-list>
            <v-list-item :key="item.text"
                         :to="item.href"
                         :value="item"
                         v-for="item in navList">
              <template v-slot:prepend>
                <v-icon :icon="`mdi-${item.icon}`"/>
              </template>

              <v-list-item-title v-text="item.text"></v-list-item-title>
            </v-list-item>
          </v-list>
        </v-menu>
      </template>
    </v-app-bar>
    <v-main>
      <slot></slot>
    </v-main>
    <v-footer app class="align-self-center text-center justify-center">
      <c-link href="http://beian.miit.gov.cn/">渝ICP备2021006885号-1</c-link>
    </v-footer>
  </v-layout>
</template>

<script setup lang="ts">
const router = useRouter()
const route = useRoute()

const title = computed(()=>route.meta.title || 'Liaoqinwei')

const navList = [
  {text: '技术博客', icon: 'code-less-than', href: '/blog'},
  {text: '生活分享', icon: '', href: '/blog'},
  {text: 'xxxx', icon: '', href: '/blog'},
]
</script>
