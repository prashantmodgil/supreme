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

ActiveRecord::Schema.define(version: 2019_02_10_061453) do

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complaints", force: :cascade do |t|
    t.datetime "call_date"
    t.string "dealer"
    t.string "product_name"
    t.string "fault"
    t.string "complaint_status"
    t.string "call_history"
    t.string "warranty"
    t.string "mechenic"
    t.string "site_address"
    t.string "coustomer_name"
    t.string "coustomer_address"
    t.string "coustomer_city"
    t.string "coustomer_phone"
    t.string "product_sr_no"
    t.datetime "purchase_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "createdby"
    t.string "instock"
    t.datetime "close_date"
  end

  create_table "dealers", force: :cascade do |t|
    t.string "dealer_name"
    t.string "dealer_contact"
    t.string "dealer_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mechenics", force: :cascade do |t|
    t.string "mec_name"
    t.string "email"
    t.string "mobile_num_1"
    t.string "mobile_num2"
    t.string "address"
    t.string "district"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
