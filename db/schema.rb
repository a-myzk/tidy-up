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

ActiveRecord::Schema.define(version: 2021_06_16_075500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer "name", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "item_id"
    t.index ["item_id"], name: "index_categories_on_item_id"
  end

  create_table "clothes_diagnoses", force: :cascade do |t|
    t.string "question"
    t.integer "one_answer"
    t.integer "two_answer"
    t.integer "three_answer"
    t.integer "four_answer"
    t.integer "five_answer"
    t.string "result"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "item_id"
    t.index ["category_id"], name: "index_clothes_diagnoses_on_category_id"
    t.index ["item_id"], name: "index_clothes_diagnoses_on_item_id"
  end

  create_table "goods_diagnoses", force: :cascade do |t|
    t.string "question"
    t.integer "one_answer"
    t.integer "two_answer"
    t.integer "three_answer"
    t.integer "four_answer"
    t.integer "five_answer"
    t.string "result"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.string "image"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "categories", "items"
  add_foreign_key "clothes_diagnoses", "categories"
  add_foreign_key "clothes_diagnoses", "items"
end
