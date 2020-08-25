<template>
  <div>
    <h1>Welcome to {{ events }}</h1>
  </div>
</template>

<script>
export default {
  props: {
    events: Object,
  },
};
</script>
