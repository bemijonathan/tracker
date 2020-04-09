class User < ApplicationRecord
    validates :email, :password, :state, :country, :zip_code, :street, :phone, :name, presence: true
    validates :email, uniqueness: true

    has_many :transactions
    # attr_default :admin , false
end
