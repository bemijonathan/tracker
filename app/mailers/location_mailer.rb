class LocationMailer < ApplicationMailer
    default from: 'notifications@shipping.com'

    def remind_location
        @email = params[:email]
        @url  = 'http://example.com/login'
        @name = params[:name]
        @content = params[:content]
        mail(from: 'jonathan sender@example.com', reply_to: "no reply", to: @email, subject: 'Goods Delivery Notification')
    end
end
