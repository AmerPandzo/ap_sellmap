class CreateLocationsAssortments < ActiveRecord::Migration
  def change
    create_table :locations_assortments do |t|
      t.integer :assortment_id
      t.integer :location_id

      t.timestamps
    end
  end
end
