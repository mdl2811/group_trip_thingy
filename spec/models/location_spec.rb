require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:attraction) }
  end

  describe '#us_formatted' do
    it 'Displays location info' do
      location = Location.create(country: 'America', attraction: 'Penguins')
      expect(location.us_formatted).to eq("America, Penguins")
    end
  end
end
