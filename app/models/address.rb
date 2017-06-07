# == Schema Information
#
# Table name: addresses
#
#  id           :integer          not null, primary key
#  phone_number :string
#  latitude     :float            not null
#  longitude    :float            not null
#  location_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Address < ApplicationRecord
  validates_presence_of :latitude, :longitude
  belongs_to :locations
end
