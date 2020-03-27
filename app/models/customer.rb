class Customer < ApplicationRecord
    belongs_to :address
    # belongs_to :users
    has_many :buildings
    
    after_create :upload_lead_files
        
            def upload_lead_files
                dropbox_client = DropboxApi::Client.new = ENV["DROPBOX_OAUTH_BEARER"]
                lead = Lead.find_by_email(self.contact_email) 
            if lead.email == self.contact_email
       
        end
    end
end
