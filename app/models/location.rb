class Location < ApplicationRecord
	has_one :address, dependent: :destroy
end
