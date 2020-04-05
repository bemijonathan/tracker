class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :street
      t.string :state
      t.string :country
      t.string :zip_code
      t.string :password
      t.string :email
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
