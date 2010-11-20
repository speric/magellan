class AddUserIdToVenue < ActiveRecord::Migration
  def self.up
    add_column :venues, :user_id, :integer, :null => false
  end

  def self.down
    remove_column :venues, :user_id
  end
end
