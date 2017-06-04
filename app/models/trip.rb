class Trip < ApplicationRecord
	has_many :location
  belongs_to :user, optional: true
end
