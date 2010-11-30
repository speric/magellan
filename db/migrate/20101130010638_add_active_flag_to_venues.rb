class AddActiveFlagToVenues < ActiveRecord::Migration
  def self.up
    add_column :venues, :active, :boolean, :null => false, :default => 1
  end

  def self.down
  end
end
