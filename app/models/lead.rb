class Lead < ApplicationRecord 


    after_create :upload_lead_files
        
    def upload_lead_files
        dropbox_client = DropboxApi::Client.new = ENV["DROPBOX_OAUTH_BEARER"]
        lead = Lead.find_by_email(self.contact_email) 
    if lead.email == self.contact_email
        dropbox_client.create_folder("/#{self.customer}") 
        dropbox_client.upload("/#{self.customer}/#{lead.attached_file}", lead.attached_file)

           
        end 
    end
end
