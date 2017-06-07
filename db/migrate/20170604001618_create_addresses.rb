class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :phone_number
      t.string :latitude, null: false
      t.string :longitude, null: false
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
