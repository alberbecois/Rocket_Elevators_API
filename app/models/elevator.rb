require 'Send_SMS/SMS'

class Elevator < ApplicationRecord
    belongs_to :column

    after_save :send_sms

    def send_sms
        sms = SendSms::Sms.new
        sms.send_sms
    end         

end 

