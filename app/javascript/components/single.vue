<template>
  <div class="modal-card" style="width: auto">
    <header class="modal-card-head">
      <p class="modal-card-title">Shipping Details</p>
      <button class="button" type="button" @click="$parent.close()" v-if="window">Close</button>
      <a class="button" type="button" href="/" v-else>Go Back</a>

    </header>
    <section class="modal-card-body contianer" style="font-size:16px;">
      <div id="wpcargo-result-wrapper" class="wpcargo-wrap-details wpcargo-container mb-5" style="max-width:750px; margin:auto;">
        <div id="wpcargo-track-header" class="wpcargo-col-md-12 text-center detail-section" style="text-align:center">
          <div class="comp_logo" >
            <img src />
          </div>
          <!-- comp_logo -->
          <div class="b_code">
            <img
              src="http://wpcargo.com/demo/wpcargo-shipping-rate/wp-content/plugins/wpcargo//includes/barcode.php?codetype=Code128&amp;size=60&amp;text=WPC002673859270-CARGO"
            />
          </div>
          <!-- b_code -->
          <div class="shipment-number">
            <h2 class="wpcargo-title">{{props.tracking_id.toUpperCase()}}</h2>
          </div>
          <!-- Track_Num -->
        </div>
        <div id="shipper-info" class="wpcargo-row columns" >
          <div class="column detail-section">
            <p id="shipper-header" class="header-title">
              <strong>Shipper Address</strong>
            </p>
            <div class="shipper details">
              <p>
                <span class="">Shipper Name :</span> {{props.shiper_name}}
              </p>
              <p>
                <span class="">Phone Number :</span> {{props.shiper_phone_number}}
              </p>
              <p>
                <span class="">Address :</span> {{props.shipper_address}}
              </p>
              <p>
                <span class="">Email :</span> {{props.shipper_email}}
              </p>
            </div>
          </div>
          <div class="column detail-section">
            <p id="receiver-header" class="header-title">
              <strong>Receiver Address</strong>
            </p>
            <div class="receiver details">
              <p>
                <span class="">Receiver Name :</span>{{props.reciever_name}}
              </p>
              <p>
                <span class="">Phone Number :</span>{{props.receiver_phone_number}}
              </p>
              <p>
                <span class="">Address :</span>{{props.reciever_adress}}
              </p>
              <p>
                <span class="">Email :</span>{{props.reciever_email}}
              </p>
            </div>
          </div>
          <div id="shipment_info" class="column">
            <div class="wpcargo-col-md-12">
              <p id="shipment_info-header" class="header-title">
                <strong>Shipment Information</strong>
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Type of Shipment:</span> {{props.shipment_info}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Weight:</span>{{props.weight}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Courier:</span>{{props.courier}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Packages:</span>{{props.packages}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Product:</span> {{props.product}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Quantity:</span> {{props.quantity}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Payment Mode:</span>{{props.payment_mode}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Departure Time:</span>{{props.departure_time}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Destination:</span> {{props.reciever_country}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Pickup Date:</span> {{props.pickup_date}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Pickup Time:</span> {{props.pickup_time}}
              </p>
            </div>

            <div class="wpcargo-col-md-6">
              <p>
                <span class="">Expected Delivery Date:</span> {{props.expected_delivery_date}}
              </p>
            </div>
          </div>
        </div>

        <div id="wpcargo-history-section" class="wpcargo-history-details">
          <p class="header-title">
            <strong>Current Location</strong> : 
          </p>
          <table class="table " style="width: 100%;">
            <thead>
              <tr>
                <th>Length(cm)</th>
                <th>Width(cm)</th>
                <th>Status</th>
                <th>Updated By</th>
                <th>Remarks</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{{props.mode.split("*")[0]}}</td>
                <td>{{props.mode.split("*")[1]}}</td>
                <td>{{props.container_status}}</td>
                <td></td>
                <td></td>
              </tr>
            </tbody>
          </table>

          <table class="table " style="width: 100%;">
            <thead>
              <tr>
                <th>Location</th>
                <th>Weight (kg)</th>
                <th>Qty.</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{{props.current_location}}</td>
                <td>{{props.weight}}</td>
                <td>{{props.quantity}}</td>
              </tr>
            </tbody>
          </table>
        </div>
        <div id="package-weight-info" class="wpcargo-container">
          <div class="wpcargo-row">
            <section class="wpcargo-col-md-4 first" style="text-align: center; font-weight: bold;">
              Total Volume Weight : {{parseInt(props.mode.split("*")[0]) * parseInt(props.mode.split("*")[0]) * parseInt(props.weight) }}
              <span id="package_volumetric"></span>kg.
            </section>
            <section class="wpcargo-col-md-4" style="text-align: center; font-weight: bold;">
              Total Actual Weight :
              <span id="package_actual_weight">{{props.weight}}</span>kg.
            </section>
          </div>
        </div>
      </div>
    </section>
    <footer class="modal-card-foot">
      <button class="button is-primary">Print</button>
    </footer>
  </div>
</template>


<script>
export default {
  props: ["props"],
  computed:{
    window(){
      if(window.location.pathname.includes('search')){
        return false
      }
      return true
    }

  }
};
</script>