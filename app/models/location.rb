class Location < ApplicationRecord
	has_many :addresses, dependent: :destroy

	validates_presence_of :country, :state, :city, :attraction
end
