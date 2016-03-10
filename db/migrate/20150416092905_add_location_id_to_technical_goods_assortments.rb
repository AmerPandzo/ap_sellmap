class AddLocationIdToTechnicalGoodsAssortments < ActiveRecord::Migration
  def change
  	add_column :technical_goods_assortments, :location_id , :integer
  end
end
