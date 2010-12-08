class AddOtherInfoToVenues < ActiveRecord::Migration
  def self.up
    add_column :venues, :phone_number, :string, :null => true
    add_column :venues, :website, :string, :null => true
    add_column :venues, :contact, :string, :null => true
  end

  def self.down
    remove_column :venues, :phone_number
    remove_column :venues, :website
    remove_column :venues, :contact
  end
end
