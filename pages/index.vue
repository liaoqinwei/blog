<script setup langt="ts">
const {data, pending, error, refresh} = await useFetch('/api/hello')
const {execute} = await useFetch('/api/hello', {method: 'post', immediate: false})
async function  addAndFlush(){
  await execute()
  await refresh()
}
// await us
definePageMeta({
  layout: false
})
</script>

<template>
  <div>
    <NuxtLayout name="default">
      <h1 v-for="item in data">{{ item.name + '----' + item.email }}</h1>
      <button @click="() => refresh()">刷新</button>
      <button @click="() => addAndFlush()">添加</button>
      <template #footer>
        <h1>Footer</h1>
      </template>
    </NuxtLayout>
  </div>


</template>
