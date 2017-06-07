# == Schema Information
#
# Table name: trips
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  destinations :string           default([]), is an Array
#

class Trip < ApplicationRecord
  belongs_to :user, optional: true
	has_many :locations

	validates_presence_of :name

	def info
		"#{name}"
	end
end
