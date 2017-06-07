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

require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
