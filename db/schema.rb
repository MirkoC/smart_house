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

ActiveRecord::Schema.define(version: 20150827190125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doors", force: :cascade do |t|
    t.string   "value"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "doors", ["room_id"], name: "index_doors_on_room_id", using: :btree

  create_table "houses", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postal_code"
    t.string   "owner"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rooms", ["house_id"], name: "index_rooms_on_house_id", using: :btree

  create_table "temperatures", force: :cascade do |t|
    t.string   "value"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "temperatures", ["room_id"], name: "index_temperatures_on_room_id", using: :btree

  add_foreign_key "doors", "rooms"
  add_foreign_key "rooms", "houses"
  add_foreign_key "temperatures", "rooms"
end
