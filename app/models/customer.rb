class Customer < ApplicationRecord
    belongs_to :address
    # belongs_to :users
    has_many :buildings

    # After save on a customer, verify if there is a lead (for dropbox)
    def verify_lead
    puts "in verify lead"
    # verify if there is 1 lead
        if self.lead
        puts "OK__THERE IS 1 LEAD__"

            # if the lead has no attachment, print to console
            if self.lead.fileattachment == nil
            puts "__There's no attachment in the lead__"
            else 
            self.lead.add_file_to_dropbox
            end
        else
        puts "OK__THERE IS NO LEAD__"
        end
    end
end
