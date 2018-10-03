class CreateApProducts < ActiveRecord::Migration
  def change
    create_table :ap_products do |t|
      t.string :name

      t.timestamps
    end
  end
end
