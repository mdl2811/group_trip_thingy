class Trip < ApplicationRecord
	has_many :locations
  belongs_to :user, optional: true

	def info
		"Trip #{:name}"
	end
end
