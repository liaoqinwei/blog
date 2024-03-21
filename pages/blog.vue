<script setup lang="ts">
definePageMeta({
  name: 'blog',
  title: "技术博客"
})
const {data: blog, error, execute} =await useFetch<{ data: any[] }>("/api/blog", { pick: ['data']})
</script>

<template>
  <ul class="list px-4 mt-4">
    <li v-for="item in blog.data">
      <v-card variant="elevated" class="pa-0 pa-md-4">
        <v-container class="pa-0 pa-md-1">
          <v-row>
            <v-col xs="6" md="12" class="pa-0 pa-md-3">
              <v-img
                  style="height: 180px"
                  aspect-ratio="1/1"
                  cover
                  :src="item.banner"
              />
            </v-col>
            <v-col xs="6" class="pa-0 pa-md-3">
              <v-card-text >12h</v-card-text>
              <v-card-title>{{item.name}}</v-card-title>
              <v-card-subtitle>{{item.description}}</v-card-subtitle>
              <v-card-actions></v-card-actions>
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
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  list-style: none;
}
</style>
