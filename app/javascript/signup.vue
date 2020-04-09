<template>
  <section>
    <form @submit.prevent="Signup" style="max-width:350px;margin: 20px auto;">
      <p>We are eager to start shipping for you and your organization. Kindly fill the form to commence business.</p>
      <b-field
        :type="error.includes('email')? 'is-danger' : '' "
        :message="errormessage.email? errormessage.email[0] : '' "
        label="Email"
      >
        <b-input placeholder="email" type="email" v-model="email"></b-input>
      </b-field>
      <b-field
        :type="error.includes('name')? 'is-danger' : '' "
        :message="errormessage.name? errormessage.email[0] : '' "
        label="Full Name"
      >
        <b-input type="text" name="name" v-model="name"></b-input>
      </b-field>
      <b-field
        :type="error.includes('phone')? 'is-danger' : '' "
        :message="errormessage.phone? errormessage.email[0] : '' "
        label="Phone"
      >
        <b-input type="text" name="phone" v-model="phone"></b-input>
      </b-field>
      
      <b-field
        :type="error.includes('street')? 'is-danger' : '' "
        :message="errormessage.street? errormessage.email[0] : '' "
        label="Street"
      >
        <b-input type="text" name="street" v-model="street"></b-input>
      </b-field>
      <b-field
        :type="error.includes('state')? 'is-danger' : '' "
        :message="errormessage.state? errormessage.email[0] : '' "
        label="State"
      >
        <b-input type="text" name="state" v-model="state"></b-input>
      </b-field>
      <b-field
        :type="error.includes('country')? 'is-danger' : '' "
        :message="errormessage.country? errormessage.email[0] : '' "
        label="Country"
      >
        <b-input type="text" name="country" v-model="country"></b-input>
      </b-field>
      <b-field
        :type="error.includes('zip_code')? 'is-danger' : '' "
        :message="errormessage.zip_code? errormessage.email[0] : '' "
        label="zip code"
        name="zip_code"
      >
        <b-input placeholder="123001" type="text" v-model="zip_code"></b-input>
      </b-field>
      <b-field
        :type="error.includes('password')? 'is-danger' : '' "
        :message="errormessage.password? errormessage.email[0] : '' "
        label="Password"
      >
        <b-input placeholder="123" type="password" name="password" v-model="password"></b-input>
      </b-field>
      <b-button type="is-primary" expanded @click="Signup" :loading="loading">Submit</b-button>
    </form>
  </section>
</template>

<script>
export default {
  data() {
    return {
      email: "",
      password: "",
      zip_code: "",
      street: "",
      state: "",
      country: "",
      phone:"",
      name:"",
      loading: false,
      error: [],
      errormessage: {}
    };
  },
  methods: {
    async Signup() {

      this.errormessage = {};
      this.error = []

      this.loading = true;
      try {
        let f = {
          email: this.email,
          password: this.password,
          zip_code: this.zip_code,
          street: this.street,
          state: this.state,
          country: this.country,
          name:this.name,
          phone: this.phone,
          authenticity_token: document.querySelector('[name="csrf-token"]')
            .content
        };
        let response = await this.$axios.post(
          "/users.json",
          f,
          {
            "Content-Type": "application/json"
          }
        );
        window.location.assign('/')
        console.log(response);
      } catch (error) {
        console.log(error.response)
        console.log(error.response.data);
        let responseError = error.response.data;
        this.errormessage = responseError;
        this.error = Object.keys(responseError);
      }
      this.loading = false;
    }
  }
};
</script>

<style>
</style>