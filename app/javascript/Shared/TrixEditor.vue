<template>
  <div>
    <input :id="id" type="hidden" name="content" v-model="trixText" />
    <trix-editor :input="id"></trix-editor>
  </div>
</template>

<script>
import Trix from "trix";
export default {
  props: {
    id: {
      type: String,
      required: true,
    },
    content: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      trixText: this.content,
    };
  },
  methods: {
    setTextToTrix(e) {
      this.trixText = document.getElementById(this.id).value;
    },
    emitDataBackToComponent() {
      this.$emit("dataFromTrix", this.trixText);
    },
  },
  mounted() {
    document.addEventListener("trix-change", this.setTextToTrix);
  },
  beforeDestroy() {
    document.removeEventListener("trix-change", this.setTextToTrix);
  },
  updated() {
    this.emitDataBackToComponent();
  },
};
</script>
