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

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
