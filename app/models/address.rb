# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  street_name :string
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Address < ApplicationRecord
  validates_presence_of :street_name
  belongs_to :location
end
