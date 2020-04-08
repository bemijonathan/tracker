<template>
  <div>
    <b-field class="p-1">
      <b-input placeholder="Search Tracking Number" type="search" icon="magnify"></b-input>
      <p class="control">
        <button class="button is-primary">Search</button>
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
						<Single/>
        </b-modal>
  </div>
</template>

<script>
import Single from './single.vue'
export default {
  data() {
    return {
      data: [
        {
          id: 1,
          tracking_number: "EQDTOERVERW_BUEY",
          Shipper_Name: "Jesse",
          Reciever_Name: "Simmons",
          date: "2016-10-15 13:43:27",
          gender: "Male",
          container_status: "delivered"
        },
        {
          id: 2,
          tracking_number: "EQDTOERVERW_BUEY",
          Shipper_Name: "John",
          Reciever_Name: "Jacobs",
          date: "2016-12-15 06:00:53",
          gender: "Male",
          container_status: "in transit"
        },
        {
          id: 3,
          tracking_number: "EQDTOERVERW_BUEY",
          Shipper_Name: "Tina",
          Reciever_Name: "Gilbert",
          date: "2016-04-26 06:26:28",
          gender: "Female",
          container_status: "picked up"
        },
        {
          id: 4,
          tracking_number: "EQDTOERVERW_BUEY",
          Shipper_Name: "Clarence",
          Reciever_Name: "Flores",
          date: "2016-04-10 10:28:46",
          gender: "Male",
          container_status: "delivered"
        },
        {
          id: 5,
          tracking_number: "EQDTOERVERW_BUEY",
          Shipper_Name: "Anne",
          Reciever_Name: "Lee",
          date: "2016-12-06 14:38:38",
          gender: "Female",
          container_status: "delivered"
        }
      ],
      columns: [
        {
          field: "id",
          label: "ID",
          width: "40",
          numeric: true
        },
        {
          field: "tracking_number",
          label: "Tracking Number"
        },

        {
          field: "Shipper_Name",
          label: "Shipper Name"
        },
        {
          field: "Reciever_Name",
          label: "Reciever Name"
        },
        {
          field: "date",
          label: "Date"
          //   centered: true
        },
        {
          field: "container_status",
          label: "Container Status"
        }
			],
			isComponentModalActive:false
    };
  },
  methods: {
    row(e) {
			console.log(e);
			this.isComponentModalActive = true
    }
	},
	components:{
		Single
	}
};
</script>