class Customer < ApplicationRecord
    belongs_to :address
    # belongs_to :users
    has_many :buildings
end
