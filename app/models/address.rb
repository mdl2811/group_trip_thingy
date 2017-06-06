class Address < ApplicationRecord
  belongs_to :location

  validates_presence_of :latitude, :longitude
end
