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
      <v-card width="400">
        <v-card-item>
          <v-card-title>This is a title</v-card-title>

          <v-card-subtitle>This is a subtitle</v-card-subtitle>
        </v-card-item>

        <v-card-text>
          This is content
        </v-card-text>
      </v-card>
      <p class="text-h3"  v-for="item in data">{{ item.name + '----' + item.email }}</p>
        <VBtn elevation="4" @click="() => refresh()">刷新</VBtn>
        <VBtn elevation="4" @click="() => addAndFlush()">添加</VBtn>
      <template #footer>
        <h1>Footer</h1>
      </template>
    </NuxtLayout>
  </div>


</template>
