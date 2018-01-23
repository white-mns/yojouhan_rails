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

ActiveRecord::Schema.define(version: 20180120153305) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "review"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elemental_lists", force: true do |t|
    t.integer  "elemental_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "elemental_lists", ["elemental_id"], name: "index_elemental_lists_on_elemental_id", using: :btree
  add_index "elemental_lists", ["name"], name: "index_elemental_lists_on_name", using: :btree

  create_table "fuka_lists", force: true do |t|
    t.integer  "fuka_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fuka_lists", ["fuka_id"], name: "index_fuka_lists_on_fuka_id", using: :btree
  add_index "fuka_lists", ["name"], name: "index_fuka_lists_on_name", using: :btree

  create_table "items", force: true do |t|
    t.integer  "result_no"
    t.integer  "generate_no"
    t.integer  "e_no"
    t.integer  "i_no"
    t.integer  "unit_type"
    t.integer  "orig_name"
    t.string   "name"
    t.integer  "strength"
    t.integer  "fuka1"
    t.integer  "fuka2"
    t.integer  "guard_elemental"
    t.integer  "stock"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "items", ["fuka1"], name: "index_items_on_fuka1", using: :btree
  add_index "items", ["fuka2"], name: "index_items_on_fuka2", using: :btree
  add_index "items", ["guard_elemental"], name: "index_items_on_guard_elemental", using: :btree
  add_index "items", ["i_no"], name: "index_items_on_i_no", using: :btree
  add_index "items", ["name"], name: "index_items_on_name", using: :btree
  add_index "items", ["orig_name"], name: "index_items_on_orig_name", using: :btree
  add_index "items", ["stock"], name: "index_items_on_stock", using: :btree
  add_index "items", ["strength"], name: "index_items_on_strength", using: :btree
  add_index "items", ["unit_type"], name: "index_items_on_unit_type", using: :btree
  add_index "items", ["value"], name: "index_items_on_value", using: :btree

  create_table "names", force: true do |t|
    t.integer  "result_no"
    t.integer  "generate_no"
    t.integer  "e_no"
    t.string   "name"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "names", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "names", ["name"], name: "index_names_on_name", using: :btree
  add_index "names", ["nickname"], name: "index_names_on_nickname", using: :btree

  create_table "unit_orig_name_lists", force: true do |t|
    t.integer  "orig_name_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_orig_name_lists", ["name"], name: "index_unit_orig_name_lists_on_name", using: :btree
  add_index "unit_orig_name_lists", ["orig_name_id"], name: "index_unit_orig_name_lists_on_orig_name_id", using: :btree

  create_table "unit_type_lists", force: true do |t|
    t.integer  "type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_type_lists", ["name"], name: "index_unit_type_lists_on_name", using: :btree
  add_index "unit_type_lists", ["type_id"], name: "index_unit_type_lists_on_type_id", using: :btree

end
