# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101130010638) do

  create_table "comments", :force => true do |t|
    t.integer  "venue_id",   :null => false
    t.integer  "user_id",    :null => false
    t.text     "content",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"
  add_index "comments", ["venue_id"], :name => "index_comments_on_venue_id"

  create_table "users", :force => true do |t|
    t.string   "email_address", :default => "", :null => false
    t.string   "name",          :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address",       :default => "", :null => false
    t.string   "latlong",       :default => "", :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name",       :default => "",   :null => false
    t.string   "address",    :default => "",   :null => false
    t.string   "latlong",    :default => "",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",                      :null => false
    t.boolean  "active",     :default => true, :null => false
  end

end
