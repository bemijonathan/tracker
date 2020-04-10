<template>
  <div>
    <b-field class="p-1">
      <b-input placeholder="Search Tracking Number" v-model="searchterm" type="search" icon="magnify"></b-input>
      <p class="control">
        <button class="button is-primary" @click="search">Search</button>
      </p>
    </b-field>
    <b-table
      :data="data"
      :columns="columns"
      class="p-1"
      @click="row"
      hoverable
      style="cursor:pointer"
    ></b-table>
        <b-modal :active.sync="isComponentModalActive"
            has-modal-card full-screen :can-cancel="false">
						<Single :props="active"/>
        </b-modal>
  </div>
</template>

<script>
import Single from './single.vue'
export default {
  props:["props"],
  data() {
    return {
      data: [ ...this.props.transactions ],
      columns: [
        {
          field: "id",
          label: "ID",
          width: "40",
          numeric: true
        },
        {
          field: "tracking_id",
          label: "Tracking Number"
        },

        {
          field: "shiper_name",
          label: "Shipper Name"
        },
        {
          field: "reciever_adress",
          label: "Reciever Name"
        },
        {
          field: "created_at",
          label: "Date"
          //   centered: true
        },
        {
          field: "container_status",
          label: "Container Status"
        }
			],
      isComponentModalActive:false,
      active:{},
      searchterm:""
    };
  },
  methods: {
    row(e) {
			this.active = e
			this.isComponentModalActive = true
    },
    search(){
      window.location.assign('/search?' + this.searchterm)
    }
	},
	components:{
		Single
	}
};
</script>