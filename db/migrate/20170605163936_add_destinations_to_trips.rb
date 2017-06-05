class AddDestinationsToTrips < ActiveRecord::Migration[5.1]
  def change
		add_column :trips, :destinations, :string, array: true, default: []
  end
end
