<script setup lang="ts">
definePageMeta({
  name: 'blog',
  title: "技术博客"
})
const {data: blog, error, execute} = await useFetch<{ data: any[] }>("/api/blog", {pick: ['data']})
</script>

<template>
  <ul class="list px-4 my-4">
    <li v-for="item in blog.data">
      <v-card variant="elevated" class="pa-0">
        <v-container class="pa-0">
          <v-row>
            <v-col class="pa-0" cols="12">
              <v-img
                  style="height: 180px"
                  aspect-ratio="1/1"
                  cover
                  :src="item.banner"
              />
            </v-col>
            <v-col class="pa-0">
              <v-card-title>
                {{ item.name }}
                <v-chip color="secondary" size="x-small">
                  技术博客
                </v-chip>
              </v-card-title>
              <v-card-subtitle>{{ item.description }}</v-card-subtitle>
              <v-card-actions>
                <v-spacer></v-spacer>
                <span class="mr-1">20</span>
                <v-icon icon="mdi-eye-outline" size="x-small"/>
              </v-card-actions>
            </v-col>
          </v-row>
        </v-container>
      </v-card>
    </li>
  </ul>
</template>

<style scoped lang="scss">
.list {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
  list-style: none;
}
</style>
