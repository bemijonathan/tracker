<template>
  <div class="container" style="max-width:350px; margin:auto;">
    <b-notification v-if="error"
      type="is-danger"
      aria-close-label="Close notification"
      role="alert"
    >incorrect email or password </b-notification>
    <form @submit.prevent="Login">
      <b-field label="Email">
        <b-input placeholder="johnsilver" maxlength="30" v-model="email"></b-input>
      </b-field>

      <b-field label="Password">
        <b-input placeholder="123" type="password" maxlength="30" v-model="password"></b-input>
      </b-field>

      <b-button expanded type="is-primary" :loading="loading" @click="Login()">Submit</b-button>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      email: "",
      password: "",
      loading: false,
      error:false
    };
  },
  methods: {
    async Login() {
      this.error = false
      this.loading = true
      try {
        let f = {
          email: this.email,
          password: this.password,
          authenticity_token: document.querySelector('[name="csrf-token"]')
            .content
        };
        let response = await this.$axios.post("/login.json", f, {
          "Content-Type": "application/json"
        });

        // if (response.data.status === 200){
          window.location.assign('/')
        // }
        console.log(response);
      } catch (error) {
        this.error = true
        console.log(error.response);
      }
      this.loading = false
    }
  }
};
</script>

<style>
</style>