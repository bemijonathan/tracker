# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_08_211151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "transactions", force: :cascade do |t|
    t.string "shipper_address"
    t.string "shiper_name"
    t.string "shiper_phone_number"
    t.string "shipper_email"
    t.string "reciever_adress"
    t.string "reciever_name"
    t.string "reciever_email"
    t.string "reciever_phone_number"
    t.text "shipment_info"
    t.string "weight"
    t.string "courier"
    t.string "packages"
    t.string "mode"
    t.string "product"
    t.string "quantity"
    t.string "payment_mode"
    t.string "departure_time"
    t.string "destination"
    t.string "pickup_date"
    t.string "pickup_time"
    t.string "expected_delivery_date"
    t.string "current_location"
    t.string "tracking_id"
    t.string "container_status"
    t.string "reciever_country"
    t.string "reciever_state"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "street"
    t.string "state"
    t.string "country"
    t.string "zip_code"
    t.string "password"
    t.string "email"
    t.string "phone"
    t.string "name"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
