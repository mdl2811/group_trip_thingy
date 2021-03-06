class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
