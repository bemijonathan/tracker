// import Vue from 'vue'

import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'
import navbar from '../components/nav'
import Buefy from 'buefy'
import Login from '../login.vue'
import signup from '../signup.vue'
import 'buefy/dist/buefy.css'
import footerComponent from '../footer.vue'

Vue.use(Buefy)
Vue.use(TurbolinksAdapter)

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '#hello',
    data: () => {
      return {
        message: "Can you say hello?"
      }
    },
    components: { App, navbar, footerComponent , Login , signup}
  })
})
