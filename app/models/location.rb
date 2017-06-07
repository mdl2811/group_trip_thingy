# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  country    :string           not null
#  city       :string           not null
#  attraction :string           not null
#  trip_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ApplicationRecord
	has_many :addresses, dependent: :destroy

	validates_presence_of :country, :state, :city, :attraction
end
