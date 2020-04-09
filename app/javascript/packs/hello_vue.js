// import Vue from 'vue'
import Axios from 'axios'

import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'
import navbar from '../components/nav'
import Buefy from 'buefy'
import Login from '../login.vue'
import signup from '../signup.vue'
import Dashboard from '../dashboard.vue'
import 'buefy/dist/buefy.css'
import footerComponent from '../footer.vue'
import newtransaction from '../newtransaction.vue'
// Axios.defaults.headers = {
//   'Content-Type': 'application/json'
// },


Vue.use(Buefy)
Vue.use(TurbolinksAdapter)
Vue.prototype.$axios = Axios;

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '#hello',
    data: () => {
      return {
        message: "Can you say hello?"
      }
    },
    components: { App, navbar, footerComponent , Login , signup, Dashboard, newtransaction}
  })
})
