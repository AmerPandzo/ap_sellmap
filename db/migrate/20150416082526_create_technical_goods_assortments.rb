class CreateTechnicalGoodsAssortments < ActiveRecord::Migration
  def change
    create_table :technical_goods_assortments do |t|
      t.integer :ap1_id
      t.integer :ap2_id
      t.integer :ap3_id
      t.integer :ap4_id
      t.integer :ap5_id
      t.integer :ap6_id
      t.integer :ap7_id
      t.integer :ap8_id
      t.integer :b1_id
      t.integer :b2_id
      t.integer :b3_id
      t.integer :b4_id
      t.integer :b5_id
      t.integer :b6_id

      t.timestamps
    end
  end
end
