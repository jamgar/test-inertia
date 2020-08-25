<template>
  <h1>Title: {{ event.data.attributes.title }}</h1>
</template>

<script>
export default {
  props: {
    event: Object,
  },
};
</script>