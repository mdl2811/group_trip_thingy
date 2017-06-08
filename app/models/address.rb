# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  state       :string
#  city        :string
#  street      :string
#  zip         :string
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Address < ApplicationRecord
  validates_presence_of :state, :city, :street, :zip
  belongs_to :location, optional: true
end
