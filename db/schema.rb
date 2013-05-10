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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130509211900) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "note"
    t.boolean  "visible"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "formats", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "length"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "medium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: true do |t|
    t.string   "name"
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
    t.decimal  "price",              precision: 8, scale: 2
    t.decimal  "wholesale_price",    precision: 8, scale: 2
    t.decimal  "cost",               precision: 8, scale: 2
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "subtitle"
    t.integer  "medium_id"
    t.integer  "series_id"
    t.integer  "format_id"
    t.integer  "pages"
    t.integer  "playtime"
    t.date     "pub_date"
    t.boolean  "can_wholesale"
    t.integer  "minimum_stock"
    t.integer  "sold"
    t.string   "country_code"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  add_index "products", ["active"], name: "index_products_on_active", using: :btree
  add_index "products", ["can_wholesale"], name: "index_products_on_can_wholesale", using: :btree
  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["format_id"], name: "index_products_on_format_id", using: :btree
  add_index "products", ["medium_id"], name: "index_products_on_medium_id", using: :btree
  add_index "products", ["name", "upc"], name: "index_products_on_name_and_upc", unique: true, using: :btree
  add_index "products", ["series_id"], name: "index_products_on_series_id", using: :btree
  add_index "products", ["visible"], name: "index_products_on_visible", using: :btree

  create_table "series", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "zinewiki"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
