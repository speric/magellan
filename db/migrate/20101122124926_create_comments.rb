class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :venue_id,  :null => false
      t.integer :user_id,   :null => false
      t.text    :content,   :null => false  
      t.timestamps
    end
    
    add_index :comments, :venue_id
    add_index :comments, :user_id
  end

  def self.down
    drop_table :comments
  end
end
