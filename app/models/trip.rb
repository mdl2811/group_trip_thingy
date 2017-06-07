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
  validates_presence_of :name
  belongs_to :user, optional: true
	has_many :locations

  accepts_nested_attributes_for :locations, reject_if: :all_blank

	def info
		"#{name}"
	end
end
