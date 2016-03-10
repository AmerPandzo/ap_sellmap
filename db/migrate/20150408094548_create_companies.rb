class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
