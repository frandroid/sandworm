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

ActiveRecord::Schema.define(:version => 20120914171934) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "note"
    t.boolean  "visible"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "product_type_id"
    t.integer  "details_id"
    t.integer  "inventory"
    t.integer  "length"
    t.integer  "width"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "category_id"
    t.text     "description"
    t.integer  "upc"
    t.boolean  "visible"
    t.boolean  "active"
    t.decimal  "price",           :precision => 8, :scale => 2
    t.decimal  "wholesale_price", :precision => 8, :scale => 2
    t.decimal  "cost",            :precision => 8, :scale => 2
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "products", ["name", "upc"], :name => "index_products_on_name_and_upc", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
