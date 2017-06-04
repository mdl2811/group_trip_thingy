class Trip < ApplicationRecord
	has_many :trip
  belongs_to :user, optional: true
end
