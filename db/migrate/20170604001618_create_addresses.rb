class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :phone_number
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
