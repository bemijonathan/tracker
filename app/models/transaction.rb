require "securerandom"
class Transaction < ApplicationRecord
    belongs_to :user
    before_save :getvalue
    def encode (uuid)     
        return  [uuid.tr('-', '').scan(/../).map(&:hex).pack('c*')].pack('m*').tr('+/', '-_').slice(0..21)                                                   
    end

    def getvalue()
        val = SecureRandom.uuid
        self.tracking_id = encode(val)
    end
end
