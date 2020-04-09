<template>
  <div>
    <div class="columns" v-if="Country.length > 0" >
      <sidenav class="column is-one-fifth" :user="$props"> </sidenav>
      <div class="column p-1" style="padding-top:30px">
        <b-field label="Reciever Name">
          <b-input v-model="formdata.reciever_name"></b-input>
        </b-field>
        <b-field label="Reciever Email">
          <b-input v-model="formdata.reciever_email"></b-input>
        </b-field>
        <b-field label="Reciever Phone Number">
          <b-input v-model="formdata.reciever_phone_number"></b-input>
        </b-field>
        <b-field label="Reciever Country">
          <b-select placeholder="Select a Country" expanded v-model="formdata.reciever_country">
            <option
              :value="option.country"
              v-for="(option, i) in Country"
              :key="i"
            >{{option.country}}</option>
          </b-select>
        </b-field>
        <b-field label="Reciever Address">
          <b-input v-model="formdata.reciever_adress" type="textarea"></b-input>
        </b-field>
      </div>
      <div class="column p-1" style="padding-top:30px">
        <b-field label="shipment_info">
          <b-input v-model="formdata.shipment_info"></b-input>
        </b-field>
        <b-field label="Weight">
          <b-input v-model="formdata.weight"></b-input>
        </b-field>
        <b-field label="Length * Width in cm">
          <b-input v-model="formdata.mode"></b-input>
        </b-field>
        <b-field label="quantity">
          <b-input v-model="formdata.quantity"></b-input>
        </b-field>
        <b-field label="Package Type">
          <b-input v-model="formdata.packages"></b-input>
        </b-field>
        <b-field>
          <b-button :loading="loading" type="is-primary" expanded @click="Submit">Submit</b-button>
        </b-field>
      </div>
    </div>
  </div>
</template>

<script>
import sidenav from './components/sidebar'
import Country from "./country.json";
console.log(Country);
export default {
  props:["user"],
  data() {
    return {
      Country: [...Country],
      formdata: {
        packages: "",
        quantity: "",
        mode: "",
        weight: "",
        shipment_info: "",
        reciever_adress: "",
        reciever_country: "",
        reciever_phone_number: "",
        reciever_email: "",
        reciever_name: ""
      },
      loading: false
    };
  },
  components:{
    sidenav
  },
  methods: {
    async Submit() {
      if (this.validate) {
        this.loading = true;
        try {
          let response = await this.$axios.post(
            "/transactions.json",
            { ...this.formdata },
            {
              "Content-Type": "application/json"
            }
          );
          console.log(response);
          //   window.location.assign('/dashboard')
        } catch (error) {
          console.log(error.response);
        }
        this.loading = false;
      }
    },
    resetForm() {
      for (const e in this.formdata) {
        this.formdata[e] = "";
      }
    }
  },
  computed: {
    validate() {
      let keys = Object.keys(this.formdata);

      for (const e in this.formdata) {
        if (this.formdata[e] === "") {
          return false;
        }
      }
      return true;
    }
  }
};
</script>

<style>
</style>