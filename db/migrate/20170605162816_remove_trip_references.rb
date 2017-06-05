class RemoveTripReferences < ActiveRecord::Migration[5.1]
  def change
		change_table :locations do |t|
			t.remove_references :trip
		end
  end
end
