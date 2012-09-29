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

ActiveRecord::Schema.define(:version => 20120820124925) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "product_id"
    t.string   "status"
    t.integer  "product_cost"
    t.integer  "product_items"
    t.integer  "product_total"
    t.integer  "total_cost"
  end

  create_table "categories", :force => true do |t|
    t.string   "categoryname"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "p_name"
    t.string   "p_dis"
    t.decimal  "p_cost"
    t.string   "p_cat"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "categoryid"
    t.integer  "p_nitem"
  end

  create_table "translations", :force => true do |t|
    t.string   "locale"
    t.string   "key"
    t.text     "value"
    t.text     "interpolations"
    t.boolean  "is_proc",        :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "u_name"
    t.string   "mailId"
    t.decimal  "ph_no"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_file_name"
    t.string   "user_content_type"
    t.integer  "user_file_size"
    t.datetime "user_updated_at"
    t.string   "password"
  end

end
