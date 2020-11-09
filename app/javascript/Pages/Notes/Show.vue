<template>
  <div>
    <h1>{{ note.title }}</h1>
    <div class="trix-content">
      {{ note.content }}
    </div>
    {{ note }}
  </div>
</template>

<script>
export default {
  props: ["note"],
};
</script>

<style></style>
