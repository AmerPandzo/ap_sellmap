class CreatePrimaryAssortments < ActiveRecord::Migration
  def change
    create_table :primary_assortments do |t|
      t.string :name

      t.timestamps
    end
  end
end
