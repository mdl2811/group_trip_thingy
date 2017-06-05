class Trip < ApplicationRecord
  belongs_to :user, optional: true
	has_many :locations

	def info
		"#{name}"
	end
end
