<template>
  <div id="app">
    <Banner />
    <div class="container">
      <div class="columns is-desktop" style="margin-top:45px">
        <div class="column" v-for="(img, i) in images" :key="i" style="padding:10px">
          <div class="card">
            <img :src="'/images/'+img.img" class="card-image" />
            <footer class="card-footer">
              <a href="#" class="card-footer-item">{{img.text}}</a>
            </footer>
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

      <section class="hero is-primary container" style="border-radius:30px;padding:20px">
        <div class="columns is-desktop" style="align-items:center;">
          <div class="hero-body column">
            <img src="images/de-removebg-preview.png" />
          </div>
          <div class="hero-body column">
            <div style="max-width:350px;">
              <h1 class="title">Excellence Simply delivered.</h1>
              <h2
                class="subtitle"
              >International express deliveries: global freight forwarding by air, sea, road and rail; warehousing solutions from packaging, to repairs, to storage; mail deliveries worldwide; and other customized logistic services – with everything DHL does, we help connect people and improve their lives.</h2>
            </div>
          </div>
        </div>
      </section>

      <Search/>
    </div>
  </div>
</template>

<script>
import Search from './components/searchtrack'
import Banner from "./components/banner";
export default {
  data: function() {
    return {
      message: "Hello Vue!",
      images: [
        { img: "delivery.png", text: "Express Shipping" },
        { img: "shiiip.png", text: "Fast Tracking" },
        { img: "location.png", text: "any where" }
      ]
    };
  },
  components: {
    Banner,
    Search
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
