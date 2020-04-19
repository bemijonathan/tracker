# Preview all emails at http://localhost:3000/rails/mailers/location_mailer
class LocationMailerPreview < ActionMailer::Preview
    def remind_location
        LocationMailer.with(name: "jona", email: "me@hmail.com" , content: "this is the content").remind_location
    end
end
