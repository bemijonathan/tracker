<template>
<div class="contianer" v-if="checkpage">
<b-navbar type="is-primary">
    <template slot="brand">
      <b-navbar-item href="/">
        <img
          src="https://raw.githubusercontent.com/buefy/buefy/dev/static/img/buefy-logo.png"
          alt="Lightweight UI components for Vue.js based on Bulma"
        />
      </b-navbar-item>
    </template>
    <template slot="start">
      <b-navbar-item href="/">Home</b-navbar-item>
      <b-navbar-item href="#">Shipping</b-navbar-item>
      <b-navbar-dropdown label="Info">
        <b-navbar-item href="#">About</b-navbar-item>
        <b-navbar-item href="#">Contact</b-navbar-item>
      </b-navbar-dropdown>
    </template>

    <template slot="end" v-if="props === null">
      <b-navbar-item tag="div">
        <div class="buttons">
          <a class="button is-primary" href="/signup">
            <strong>Sign up</strong>
          </a>
          <a class="button is-light" href="/login">Log in</a>
        </div>
      </b-navbar-item>
    </template>

    <template slot="end" v-else>
      <b-navbar-item tag="div">
        <b-navbar-dropdown label="Profile">
            <b-navbar-item href="/dashboard"> Dashboard </b-navbar-item>
            <b-navbar-item href="/logout"> Log Out </b-navbar-item>
            <b-navbar-item href="#" v-if="props.admin"> Settings </b-navbar-item>
        </b-navbar-dropdown>
      </b-navbar-item>
    </template>
  </b-navbar>
</div>
  
</template>

<script>
export default {
  props: ["props"],
  mounted() {
    console.log(this.props);
  },
  computed:{
    checkpage(){
      if(window.location.pathname.includes('dashboard')) return false
      else return true
    }
  }
};
</script>