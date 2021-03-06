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

ActiveRecord::Schema.define(version: 2021_06_21_133250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_diagnoses", force: :cascade do |t|
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
    t.bigint "item_id"
    t.index ["item_id"], name: "index_book_diagnoses_on_item_id"
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
    t.bigint "item_id"
    t.index ["item_id"], name: "index_clothes_diagnoses_on_item_id"
  end

  create_table "flags", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_flags_on_item_id"
    t.index ["user_id"], name: "index_flags_on_user_id"
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
    t.bigint "item_id"
    t.index ["item_id"], name: "index_goods_diagnoses_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.string "image"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.bigint "user_id"
    t.integer "category"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "other_diagnoses", force: :cascade do |t|
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
    t.bigint "item_id"
    t.index ["item_id"], name: "index_other_diagnoses_on_item_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "book_diagnoses", "items"
  add_foreign_key "clothes_diagnoses", "items"
  add_foreign_key "flags", "items"
  add_foreign_key "flags", "users"
  add_foreign_key "goods_diagnoses", "items"
  add_foreign_key "items", "users"
  add_foreign_key "other_diagnoses", "items"
end
