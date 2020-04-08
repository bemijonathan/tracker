<template>
  <div class="modal-card" style="width: auto">
    <header class="modal-card-head">
      <p class="modal-card-title">Shipping Details</p>
      <button class="button" type="button" @click="$parent.close()">Close</button>
    </header>
    <section class="modal-card-body">
      <div id="wpcargo-result-wrapper" class="wpcargo-wrap-details wpcargo-container mb-5">
        <div id="wpcargo-track-header" class="wpcargo-col-md-12 text-center detail-section">
          <div class="comp_logo">
            <img src />
          </div>
          <!-- comp_logo -->
          <div class="b_code">
            <img
              src="http://wpcargo.com/demo/wpcargo-shipping-rate/wp-content/plugins/wpcargo//includes/barcode.php?codetype=Code128&amp;size=60&amp;text=WPC002673859270-CARGO"
              alt="WPC002673859270-CARGO"
            />
          </div>
          <!-- b_code -->
          <div class="shipment-number">
            <h2 class="wpcargo-title">WPC002673859270-CARGO</h2>
          </div>
          <!-- Track_Num -->
        </div>
        <div id="shipper-info" class="wpcargo-row">
          <div class="wpcargo-col-md-6 detail-section">
            <p id="shipper-header" class="header-title">
              <strong>Shipper Address</strong>
            </p>
            <div class="shipper details">
              <p>
                <span class="label">Shipper Name :</span>COMEX L.L.C
              </p>
              <p>
                <span class="label">Phone Number :</span>049117313
              </p>
              <p>
                <span class="label">Address :</span>Fushe Kosove
              </p>
              <p>
                <span class="label">Email :</span>comex@mail.com
              </p>
            </div>
          </div>
          <div class="wpcargo-col-md-6 detail-section">
            <p id="receiver-header" class="header-title">
              <strong>Receiver Address</strong>
            </p>
            <div class="receiver details">
              <p>
                <span class="label">Receiver Name :</span>Daells glostrup
              </p>
              <p>
                <span class="label">Phone Number :</span>230235165
              </p>
              <p>
                <span class="label">Address :</span>asfdasd
              </p>
              <p>
                <span class="label">Email :</span>asdasdasd@asda.asdasd
              </p>
            </div>
          </div>
          <div class="clear-line"></div>
        </div>
        <div id="multi-receiver-section"></div>
        <div id="shipment-status" class="wpcargo-row" style="text-align:center;">
          <p id="result-status-header">Shipment Status:</p>
        </div>
        <div id="shipment_info" class="wpcargo-row detail-section">
          <div class="wpcargo-col-md-12">
            <p id="shipment_info-header" class="header-title">
              <strong>Shipment Information</strong>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Type of Shipment:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Weight:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Courier:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Packages:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Mode:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Product:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Quantity:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Payment Mode:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Total Freight:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Carrier:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Carrier Reference No.:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Departure Time:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Origin:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Destination:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Pickup Date:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Pickup Time:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Expected Delivery Date:</span>
            </p>
          </div>

          <div class="wpcargo-col-md-6">
            <p>
              <span class="label">Comments:</span>
            </p>
          </div>
        </div>
        <div class="wpcargo-pod-results">
          <div class="wpcargo-pod-details">
            <div class="wpcargo-pod-signature"></div>
            <div class="wpcargo-pod-image"></div>
          </div>
        </div>

        <div id="wpcargo-history-section" class="wpcargo-history-details">
          <p class="header-title">
            <strong>Shipment History</strong>
          </p>
          <!-- <script
            async
            defer
            src="https://maps.googleapis.com/maps/api/js?libraries=geometry,places,visualization&amp;key=&amp;callback=wpcSHinitMap"
          ></script> -->
          <table id="shipment-history" class="table wpcargo-table" style="width: 100%;">
            <thead>
              <tr>
                <th>Date</th>
                <th>Time</th>
                <th>Location</th>
                <th>Status</th>
                <th>Updated By</th>
                <th>Remarks</th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
        </div>
        <div id="wpc-multiple-package" class="wpcargo-table-responsive table-responsive">
          <p class="header-title">
            <strong>Packages</strong>
          </p>
          <table class="table wpcargo-table" style="width:100%;">
            <thead>
              <tr>
                <th>Qty.</th>
                <th>Piece Type</th>
                <th>Description</th>
                <th>Length(cm)</th>
                <th>Width(cm)</th>
                <th>Height(cm)</th>
                <th>Weight (kg)</th>
                <th>Value (£)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div id="package-weight-info" class="wpcargo-container">
          <div class="wpcargo-row">
            <section class="wpcargo-col-md-4 first" style="text-align: center; font-weight: bold;">
              Total Volume Weight :
              <span id="package_volumetric">0.00</span>kg.
            </section>
            <section class="wpcargo-col-md-4" style="text-align: center; font-weight: bold;">
              Total Actual Weight :
              <span id="package_actual_weight">0.00</span>kg.
            </section>
          </div>
        </div>
      </div>
    </section>
    <footer class="modal-card-foot">
      <button class="button is-primary">Login</button>
    </footer>
  </div>
</template>