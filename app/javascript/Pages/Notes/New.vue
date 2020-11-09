<template>
  <div>
    <FlashMessages />
    <form @submit.prevent="submit">
      <label for="title">Title:</label>
      <input type="text" id="title" v-model="form.title" />
      <label for="content">Content:</label>
      <TrixEditor
        :id="id"
        :content="form.content"
        @dataFromTrix="getDataFromTrix"
      />
      <button type="submit">Submit</button>
    </form>
    {{ form }}
  </div>
</template>

<script>
import TrixEditor from "@/Shared/TrixEditor";
import FlashMessages from "@/Shared/FlashMessages";
export default {
  components: {
    TrixEditor,
    FlashMessages,
  },
  data() {
    return {
      form: {
        title: "",
        content: "",
      },
      id: "notes",
    };
  },
  methods: {
    getDataFromTrix(data) {
      this.form.content = data;
    },
    submit() {
      this.$inertia.post(this.$routes.notes(), this.form);
    },
  },
};
</script>

<style></style>
