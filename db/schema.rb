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

ActiveRecord::Schema.define(version: 20160527022035) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.integer  "category_id"
    t.text     "characteristics"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"

  create_table "likes", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["item_id"], name: "index_likes_on_item_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "matches", force: :cascade do |t|
    t.integer  "object_one_id"
    t.integer  "object_two_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "matches", ["object_one_id"], name: "index_matches_on_object_one_id"
  add_index "matches", ["object_two_id"], name: "index_matches_on_object_two_id"

  create_table "sectors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
