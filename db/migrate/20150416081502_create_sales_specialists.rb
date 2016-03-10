class CreateSalesSpecialists < ActiveRecord::Migration
  def change
    create_table :sales_specialists do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
