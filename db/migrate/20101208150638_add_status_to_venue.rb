class AddStatusToVenue < ActiveRecord::Migration
  def self.up
    add_column :venues, :status, :string, :null => false, :default => "Likely"
  end

  def self.down
    remove_column :venues, :status
  end
end
