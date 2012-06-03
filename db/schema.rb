# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120602192547) do

  create_table "admin_ideas", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_matches", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_spaces", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ideas", :force => true do |t|
    t.boolean  "published",          :default => false
    t.boolean  "archived",           :default => false
    t.string   "name"
    t.string   "description"
    t.string   "contact"
    t.integer  "capacity"
    t.text     "success_criteria"
    t.text     "goodwill"
    t.text     "logistics"
    t.text     "features"
    t.text     "formality"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "matches", :force => true do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string   "url"
    t.boolean  "published",      :default => false
    t.boolean  "archived",       :default => false
    t.text     "comments"
    t.integer  "idea_id"
    t.integer  "space_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "spaces", :force => true do |t|
    t.boolean  "published",          :default => false
    t.boolean  "archived",           :default => false
    t.string   "name"
    t.string   "description"
    t.string   "contact"
    t.integer  "capacity"
    t.text     "benefit"
    t.text     "goodwill"
    t.text     "long_description"
    t.text     "satisfaction"
    t.text     "formality"
    t.string   "address"
    t.string   "city",               :default => "Burlington"
    t.string   "state",              :default => "VT"
    t.string   "zip",                :default => "05401"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

end
