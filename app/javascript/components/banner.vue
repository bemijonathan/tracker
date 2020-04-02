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
        <section :class="`hero is-medium is-${carousel.color}`">
          <div class="hero-body has-text-centered" style="height:600px">
            <h1 class="title">{{carousel.title}}</h1>
            <p>
              Express Delivery Services & International Shipping
              
            </p>
            <div>
              <b-button type="is-dark" inverted>Log In</b-button>
              <b-button type="is-dark" inverted outlined> Track Your Shipment</b-button>
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
        { title: "Slide 1", color: "primary" },
        { title: "Slide 2", color: "dark" },
        { title: "Slide 3", color: "light" }
      ]
    };
  }
};
</script>