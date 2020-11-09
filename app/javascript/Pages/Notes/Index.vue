<template>
  <div>
    <FlashMessages />
    <h1>Notes</h1>
    {{ notes }}
  </div>
</template>

<script>
import FlashMessages from "@/Shared/FlashMessages";
export default {
  components: {
    FlashMessages,
  },
  props: {
    notes: Array,
  },
};
</script>

<style></style>
