class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :state, null: false
      t.string :city, null: false
      t.string :street, null: false
      t.string :zip, null: false
      t.belongs_to :location

      t.timestamps
    end
  end
end
