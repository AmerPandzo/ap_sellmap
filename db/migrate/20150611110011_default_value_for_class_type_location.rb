class DefaultValueForClassTypeLocation < ActiveRecord::Migration
def self.up
     change_column :assets, :class_type, :string, :default => "Location", :null => false
  end
end
