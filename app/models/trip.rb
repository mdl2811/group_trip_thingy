class Trip < ApplicationRecord
  belongs_to :user, optional: true
	has_many :locations

	validates_presence_of :name

	def info
		"#{name}"
	end
end
