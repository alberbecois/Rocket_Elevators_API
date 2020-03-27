require 'twilio-ruby'
require 'json'
require 'http'

module SendSms
    class Sms 
        def initialize
        end
        
        def send_sms()
            account_sid = ENV['TWILIO_ACCOUNT_SID']
            auth_token = ENV['TWILIO_AUTH_TOKEN']
            client = Twilio::REST::Client.new(account_sid, auth_token)
            
            from = ENV['TWILIO_PHONE_NUMBER']
            to = '+15146774162'
            
            client.messages.create(
                from: from,
                to: to,
                body: "Hello technician, Antoine Deblonde. 
                There is an elevator in need of your service."
            )
        end
    end
end
