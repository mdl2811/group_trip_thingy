class Trip < ApplicationRecord
  belongs_to :user, optional: true

	def info
		"Trip #{:name}"
	end
end
