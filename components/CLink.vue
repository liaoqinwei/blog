<script setup lang="ts">
const props = defineProps({
  href: {type: String, require: true, default: ""},
  target: {type: String, require: true, default: "_blank"},
})
</script>

<template>
  <a :href="props.href" :target="props.target"
     v-bind="$attrs">
    <slot></slot>
  </a>
</template>

<style scoped lang="scss">
a{
  --bg-size-y:20px;
  color: rgb(var(--v-theme-on-background));
  text-decoration: none;
  background: linear-gradient(to bottom, transparent 90%, rgba(var(--v-theme-on-background), .4) 90%, rgb(var(--v-theme-on-background)) 100% ) left bottom/0% var(--bg-size-y) no-repeat;
}
a:hover{
  transition: background-size .18s ease-in;
  background-size: 100% var(--bg-size-y);
  color: rgba(var(--v-theme-on-background), var(--v-high-emphasis-opacity));
}
</style>
