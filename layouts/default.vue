<template>
  <v-layout>
    <v-app-bar scroll-behavior="hide">
      <v-app-bar-title>Liaoqinwei</v-app-bar-title>
      <template v-slot:append>
        <v-menu>
          <template v-slot:activator="{ props }">
            <v-app-bar-nav-icon v-bind="props"/>
          </template>
         123
        </v-menu>
      </template>
    </v-app-bar>
    <v-main>
      <slot></slot>
      <v-footer class="align-self-center text-center justify-center">
        <c-link href="http://beian.miit.gov.cn/">渝ICP备2021006885号-1</c-link>
      </v-footer>
    </v-main>
  </v-layout>
</template>
<script setup lang="ts">
</script>
