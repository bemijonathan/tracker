require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_url
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post transactions_url, params: { transaction: { courier: @transaction.courier, current_location: @transaction.current_location, departure_time: @transaction.departure_time, destination: @transaction.destination, expected_delivery_date: @transaction.expected_delivery_date, mode: @transaction.mode, packages: @transaction.packages, payment_mode: @transaction.payment_mode, pickup_date: @transaction.pickup_date, pickup_time: @transaction.pickup_time, product: @transaction.product, quantity: @transaction.quantity, reciever_adress: @transaction.reciever_adress, reciever_email: @transaction.reciever_email, reciever_name: @transaction.reciever_name, reciever_phone_number: @transaction.reciever_phone_number, shiper_name: @transaction.shiper_name, shiper_phone_number: @transaction.shiper_phone_number, shipment_info: @transaction.shipment_info, shipper_address: @transaction.shipper_address, shipper_email: @transaction.shipper_email, tracking_id: @transaction.tracking_id, weight: @transaction.weight } }
    end

    assert_redirected_to transaction_url(Transaction.last)
  end

  test "should show transaction" do
    get transaction_url(@transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_url(@transaction)
    assert_response :success
  end

  test "should update transaction" do
    patch transaction_url(@transaction), params: { transaction: { courier: @transaction.courier, current_location: @transaction.current_location, departure_time: @transaction.departure_time, destination: @transaction.destination, expected_delivery_date: @transaction.expected_delivery_date, mode: @transaction.mode, packages: @transaction.packages, payment_mode: @transaction.payment_mode, pickup_date: @transaction.pickup_date, pickup_time: @transaction.pickup_time, product: @transaction.product, quantity: @transaction.quantity, reciever_adress: @transaction.reciever_adress, reciever_email: @transaction.reciever_email, reciever_name: @transaction.reciever_name, reciever_phone_number: @transaction.reciever_phone_number, shiper_name: @transaction.shiper_name, shiper_phone_number: @transaction.shiper_phone_number, shipment_info: @transaction.shipment_info, shipper_address: @transaction.shipper_address, shipper_email: @transaction.shipper_email, tracking_id: @transaction.tracking_id, weight: @transaction.weight } }
    assert_redirected_to transaction_url(@transaction)
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete transaction_url(@transaction)
    end

    assert_redirected_to transactions_url
  end
end
