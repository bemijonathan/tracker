<template>
  <section class="container section-padding-medium" style="margin-top:45px">
    <b-carousel
      :arrow="arrow"
      :arrow-both="arrowBoth"
      :arrow-hover="arrowHover"
      :icon-pack="iconPack"
      :icon-prev="iconPrev"
      :icon-next="iconNext"
      :icon-size="iconSize"
    >
      <b-carousel-item v-for="(carousel, i) in carousels" :key="i">
        <section :class="`hero is-medium is-${carousel.color}`" :style="{'background-image':`url(${carousel.image})`}">
          <div class="hero-body has-text-centered" style="height:600px ">
            <div class="backdrop">
              <h1 class="title">Express Delivery Services & International Shipping</h1>
            <p style="font-weight:bolder" class="is-dark">
              
              
            </p>
            <div style="font-weight:bolder">
              <a type="is-primary" class="button is-primary" href="/login" inverted>Log In</a>
              <a type="is-primary"  class="button is-primary" inverted outlined href="/signup"> Track Your Shipment</a>
            </div>
            </div>
            
          </div>
        </section>
      </b-carousel-item>
    </b-carousel>
  </section>
</template>

<script>
export default {
  data() {
    return {
      arrow: true,
      arrowBoth: false,
      arrowHover: false,
      iconPack: "mdi",
      iconPrev: "arrow-left",
      iconNext: "arrow-right",
      iconSize: "",
      carousels: [
        { title: "Slide 1", color: "primary" , image:'images/banner1.jpg'},
        { title: "Slide 2", color: "dark" , image:'images/banner2.jpg'},
        // { title: "Slide 3", color: "light", image:'url' } 
      ]
    };
  }
};
</script>

<style>
  section.hero{
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }

  div.hero-body{
    display: grid;
    align-content: center;
    justify-items: center
  }
  .backdrop{
    padding: 10px;
    backdrop-filter: blur(100px);
    border-radius: 20px;
  }
  .backdrop .title{
    /* color: black !important; */
  }
</style>