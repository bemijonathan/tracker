<template>
  <div class="container" style="max-width:350px; margin:auto;">
    <form @submit="Login">
      <b-field label="Username">
        <b-input placeholder="johnsilver" maxlength="30"></b-input>
      </b-field>

      <b-field label="Password">
        <b-input placeholder="123" type="password" maxlength="30"></b-input>
      </b-field>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: "",
      password: ""
    };
  },
  methods: {
    Login() {}
  }
};
</script>

<style>
</style>