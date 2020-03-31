<template>
  <div id="app">
    <Nav></Nav>
    <p>{{ message }}</p>
  </div>
</template>

<script>
import Nav from './components/nav'
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  },
  components:{
    Nav
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
