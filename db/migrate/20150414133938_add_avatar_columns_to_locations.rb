class AddAvatarColumnsToLocations < ActiveRecord::Migration
  def self.up
    add_attachment :locations, :avatar
  end

  def self.down
    remove_attachment :locations, :avatar
  end
end
