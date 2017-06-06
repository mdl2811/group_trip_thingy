class Location < ApplicationRecord
	has_one :address, dependent: :destroy

	validates_presence_of :country, :state, :city, :attraction
end
