<template>
  <div>
    <h1>Welcome to Dashboard</h1>
    <inertia-link :href="$routes.events()">Events</inertia-link>

    <inertia-link v-if="!$page.auth.user" :href="$routes.new_user_session()"
      >Sign in</inertia-link
    >

    <inertia-link
      v-if="$page.auth.user"
      :href="$routes.destroy_user_session()"
      method="delete"
      >Sign out</inertia-link
    >
  </div>
</template>
<script>
export default {};
</script>

<style></style>
