class Trip < ApplicationRecord
  belongs_to :user, optional: true

	def info
		"#{name}"
	end
end
