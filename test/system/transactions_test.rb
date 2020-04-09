require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "creating a Transaction" do
    visit transactions_url
    click_on "New Transaction"

    fill_in "Courier", with: @transaction.courier
    fill_in "Current location", with: @transaction.current_location
    fill_in "Departure time", with: @transaction.departure_time
    fill_in "Destination", with: @transaction.destination
    fill_in "Expected delivery date", with: @transaction.expected_delivery_date
    fill_in "Mode", with: @transaction.mode
    fill_in "Packages", with: @transaction.packages
    fill_in "Payment mode", with: @transaction.payment_mode
    fill_in "Pickup date", with: @transaction.pickup_date
    fill_in "Pickup time", with: @transaction.pickup_time
    fill_in "Product", with: @transaction.product
    fill_in "Quantity", with: @transaction.quantity
    fill_in "Reciever adress", with: @transaction.reciever_adress
    fill_in "Reciever email", with: @transaction.reciever_email
    fill_in "Reciever name", with: @transaction.reciever_name
    fill_in "Reciever phone number", with: @transaction.reciever_phone_number
    fill_in "Shiper name", with: @transaction.shiper_name
    fill_in "Shiper phone number", with: @transaction.shiper_phone_number
    fill_in "Shipment info", with: @transaction.shipment_info
    fill_in "Shipper address", with: @transaction.shipper_address
    fill_in "Shipper email", with: @transaction.shipper_email
    fill_in "Tracking", with: @transaction.tracking_id
    fill_in "Weight", with: @transaction.weight
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "updating a Transaction" do
    visit transactions_url
    click_on "Edit", match: :first

    fill_in "Courier", with: @transaction.courier
    fill_in "Current location", with: @transaction.current_location
    fill_in "Departure time", with: @transaction.departure_time
    fill_in "Destination", with: @transaction.destination
    fill_in "Expected delivery date", with: @transaction.expected_delivery_date
    fill_in "Mode", with: @transaction.mode
    fill_in "Packages", with: @transaction.packages
    fill_in "Payment mode", with: @transaction.payment_mode
    fill_in "Pickup date", with: @transaction.pickup_date
    fill_in "Pickup time", with: @transaction.pickup_time
    fill_in "Product", with: @transaction.product
    fill_in "Quantity", with: @transaction.quantity
    fill_in "Reciever adress", with: @transaction.reciever_adress
    fill_in "Reciever email", with: @transaction.reciever_email
    fill_in "Reciever name", with: @transaction.reciever_name
    fill_in "Reciever phone number", with: @transaction.reciever_phone_number
    fill_in "Shiper name", with: @transaction.shiper_name
    fill_in "Shiper phone number", with: @transaction.shiper_phone_number
    fill_in "Shipment info", with: @transaction.shipment_info
    fill_in "Shipper address", with: @transaction.shipper_address
    fill_in "Shipper email", with: @transaction.shipper_email
    fill_in "Tracking", with: @transaction.tracking_id
    fill_in "Weight", with: @transaction.weight
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Transaction" do
    visit transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transaction was successfully destroyed"
  end
end
