class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :shipper_address
      t.string :shiper_name
      t.string :shiper_phone_number
      t.string :shipper_email
      t.string :reciever_adress
      t.string :reciever_name
      t.string :reciever_email
      t.string :reciever_phone_number
      t.text :shipment_info
      t.string :weight
      t.string :courier
      t.string :packages
      t.string :mode
      t.string :product
      t.string :quantity
      t.string :payment_mode
      t.string :departure_time
      t.string :destination
      t.string :pickup_date
      t.string :pickup_time
      t.string :expected_delivery_date
      t.string :current_location
      t.string :tracking_id
      t.string :container_status , default: "not recieved"
      t.string :reciever_country
      t.string :reciever_state
      t.belongs_to :user

      t.timestamps
    end
  end
end
