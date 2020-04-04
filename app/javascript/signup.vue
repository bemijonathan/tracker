<template>
  <section>
    
    <form @submit="Signup" style="max-width:350px;margin: 20px auto;">
        <p>We are eager to start shipping for you and your organization. Kindly fill the form to commence business.</p>
      <b-field label="Username">
        <b-input placeholder="johnsilver"></b-input>
      </b-field>
      <b-field label="Street">
        <b-input type="text"></b-input>
      </b-field>
      <b-field label="State">
        <b-input type="text"></b-input>
      </b-field>
      <b-field label="Country">
        <b-input type="text"></b-input>
      </b-field>
      <b-field label="zip code">
        <b-input placeholder="123001" type="text"></b-input>
      </b-field>
      <b-field label="Password">
        <b-input placeholder="123" type="password"></b-input>
      </b-field>
      <b-field label="Confirm Password">
        <b-input placeholder="123" type="password"></b-input>
      </b-field>
      <b-button type="is-primary" expanded loading>
          Submit
      </b-button>
    </form>
  </section>
</template>

<script>
export default {
  methods: {
    Signup() {}
  }
};
</script>

<style>
</style>