class CreateApBrands < ActiveRecord::Migration
  def change
    create_table :ap_brands do |t|
      t.string :name

      t.timestamps
    end
  end
end
