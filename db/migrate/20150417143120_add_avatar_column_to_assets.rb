class AddAvatarColumnToAssets < ActiveRecord::Migration
 def self.up
    add_attachment :assets, :avatar
  end

  def self.down
    remove_attachment :assets, :avatar
  end
end
