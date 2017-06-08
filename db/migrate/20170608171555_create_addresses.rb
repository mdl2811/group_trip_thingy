class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :state
      t.string :city
      t.string :street
      t.string :zip
      t.belongs_to :location

      t.timestamps
    end
  end
end
