class User < ApplicationRecord
    validates :email, :password, :state, :country, :zip_code, :street, presence: true
    validates :email, uniqueness: true
    # attr_default :admin , false
end
