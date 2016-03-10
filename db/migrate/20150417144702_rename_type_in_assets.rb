class RenameTypeInAssets < ActiveRecord::Migration
  def change
  	rename_column :assets, :type, :class_type
  end
end
