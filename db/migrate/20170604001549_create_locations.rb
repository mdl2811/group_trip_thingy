class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :country, null: false
      t.string :attraction, null: false
      t.belongs_to :trip, foreign_key: true

      t.timestamps
    end
  end
end
