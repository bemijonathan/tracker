<template>
  <div id="app">
    <Banner />
    <div class="container">
      <div class="columns" style="margin-top:45px">
        <div class="column is-two-thirds">
          <div class="columns">
            <div class="column" v-for="(img, i) in images" :key="i">
              <div class="card">
                <img :src="'/images/'+img" class="card-image" />
              </div>
              
            </div>
          </div>
        </div>
        <div class="column">
          <b-menu>
            <h1 class="is-size-3 has-text-weight-bold">Be Our Guest</h1>
            <b-menu-list style="color:white !Important">
              <b-menu-item label="Ship Online Now!"></b-menu-item>
              <b-menu-item label="Login or Open a DHL Account"></b-menu-item>
              <b-menu-item label="Pay with PayPal"></b-menu-item>
              <b-menu-item label="Get Rate and Time Quote"></b-menu-item>
              <b-menu-item label="Find DHL Locations"></b-menu-item>
              <b-menu-item label="Schedule a Return Pickup"></b-menu-item>
            </b-menu-list>
          </b-menu>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Banner from "./components/banner";
export default {
  data: function() {
    return {
      message: "Hello Vue!",
      images: ["delivery.png", "shiiip.png", "location.png"]
    };
  },
  components: {
    Banner
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
