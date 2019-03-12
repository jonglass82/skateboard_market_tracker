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

ActiveRecord::Schema.define(version: 2019_03_12_141944) do

  create_table "articles", force: :cascade do |t|
    t.text "title"
    t.string "body"
  end

  create_table "contacts", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email"
  end

  create_table "emails", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email"
  end

  create_table "listings", force: :cascade do |t|
    t.text "item_name"
    t.string "description"
    t.text "price"
    t.integer "user_id"
    t.string "image_url"
  end

  create_table "sales", force: :cascade do |t|
    t.string "title"
    t.string "price"
    t.datetime "created_at"
    t.datetime "upated_at"
  end

  create_table "wanteds", force: :cascade do |t|
    t.text "title"
    t.string "initial_offer"
    t.datetime "created_at"
    t.datetime "upated_at"
  end

end
