class AddAddressAndGeoColumnsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :address, :string, :null => false
    add_column :users, :latlong, :string, :null => false
  end

  def self.down
  end
end
