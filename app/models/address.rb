class Address < ApplicationRecord
  validates_presence_of :latitude, :longitude
end
