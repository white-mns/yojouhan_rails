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

ActiveRecord::Schema.define(version: 20180208145330) do

  create_table "books", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "author",      limit: 255
    t.integer  "review",      limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "castle_condition_lists", force: :cascade do |t|
    t.integer  "castle_condition_id", limit: 4
    t.string   "name",                limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "castle_condition_lists", ["castle_condition_id"], name: "index_castle_condition_lists_on_castle_condition_id", using: :btree
  add_index "castle_condition_lists", ["name"], name: "index_castle_condition_lists_on_name", using: :btree

  create_table "castle_condition_texts", force: :cascade do |t|
    t.integer  "result_no",      limit: 4
    t.integer  "generate_no",    limit: 4
    t.integer  "e_no",           limit: 4
    t.text     "condition_text", limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "castle_condition_texts", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree

  create_table "castle_structure_major_type_nums", force: :cascade do |t|
    t.integer  "result_no",   limit: 4
    t.integer  "generate_no", limit: 4
    t.integer  "e_no",        limit: 4
    t.integer  "build_num",   limit: 4
    t.integer  "guard_num",   limit: 4
    t.integer  "goods_num",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "castle_structure_major_type_nums", ["build_num"], name: "index_castle_structure_major_type_nums_on_build_num", using: :btree
  add_index "castle_structure_major_type_nums", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "castle_structure_major_type_nums", ["goods_num"], name: "index_castle_structure_major_type_nums_on_goods_num", using: :btree
  add_index "castle_structure_major_type_nums", ["guard_num"], name: "index_castle_structure_major_type_nums_on_guard_num", using: :btree

  create_table "castle_structures", force: :cascade do |t|
    t.integer  "result_no",   limit: 4
    t.integer  "generate_no", limit: 4
    t.integer  "e_no",        limit: 4
    t.integer  "frame_type",  limit: 4
    t.integer  "i_no",        limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "castle_structures", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "castle_structures", ["frame_type"], name: "index_castle_structures_on_frame_type", using: :btree
  add_index "castle_structures", ["i_no"], name: "index_castle_structures_on_i_no", using: :btree

  create_table "elemental_lists", force: :cascade do |t|
    t.integer  "elemental_id", limit: 4
    t.string   "name",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "elemental_lists", ["elemental_id"], name: "index_elemental_lists_on_elemental_id", using: :btree
  add_index "elemental_lists", ["name"], name: "index_elemental_lists_on_name", using: :btree

  create_table "fortress_data", force: :cascade do |t|
    t.integer  "result_no",   limit: 4
    t.integer  "generate_no", limit: 4
    t.integer  "e_no",        limit: 4
    t.integer  "grand",       limit: 4
    t.integer  "caution",     limit: 4
    t.integer  "continuance", limit: 4
    t.integer  "enthusiasm",  limit: 4
    t.integer  "goodwill",    limit: 4
    t.integer  "forecast",    limit: 4
    t.integer  "stock",       limit: 4
    t.integer  "high_grade",  limit: 4
    t.integer  "mob",         limit: 4
    t.integer  "drink",       limit: 4
    t.integer  "regalia",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "fortress_data", ["caution"], name: "index_fortress_data_on_caution", using: :btree
  add_index "fortress_data", ["continuance"], name: "index_fortress_data_on_continuance", using: :btree
  add_index "fortress_data", ["drink"], name: "index_fortress_data_on_drink", using: :btree
  add_index "fortress_data", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "fortress_data", ["e_no"], name: "index_fortress_data_on_e_no", using: :btree
  add_index "fortress_data", ["enthusiasm"], name: "index_fortress_data_on_enthusiasm", using: :btree
  add_index "fortress_data", ["forecast"], name: "index_fortress_data_on_forecast", using: :btree
  add_index "fortress_data", ["generate_no"], name: "index_fortress_data_on_generate_no", using: :btree
  add_index "fortress_data", ["goodwill"], name: "index_fortress_data_on_goodwill", using: :btree
  add_index "fortress_data", ["grand"], name: "index_fortress_data_on_grand", using: :btree
  add_index "fortress_data", ["high_grade"], name: "index_fortress_data_on_high_grade", using: :btree
  add_index "fortress_data", ["mob"], name: "index_fortress_data_on_mob", using: :btree
  add_index "fortress_data", ["regalia"], name: "index_fortress_data_on_regalia", using: :btree
  add_index "fortress_data", ["result_no"], name: "index_fortress_data_on_result_no", using: :btree
  add_index "fortress_data", ["stock"], name: "index_fortress_data_on_stock", using: :btree

  create_table "fortress_guards", force: :cascade do |t|
    t.integer  "result_no",      limit: 4
    t.integer  "generate_no",    limit: 4
    t.integer  "e_no",           limit: 4
    t.integer  "pysics",         limit: 4
    t.integer  "electric_shock", limit: 4
    t.integer  "cold",           limit: 4
    t.integer  "flame",          limit: 4
    t.integer  "saint_devil",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "fortress_guards", ["cold"], name: "index_fortress_guards_on_cold", using: :btree
  add_index "fortress_guards", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "fortress_guards", ["electric_shock"], name: "index_fortress_guards_on_electric_shock", using: :btree
  add_index "fortress_guards", ["flame"], name: "index_fortress_guards_on_flame", using: :btree
  add_index "fortress_guards", ["pysics"], name: "index_fortress_guards_on_pysics", using: :btree
  add_index "fortress_guards", ["saint_devil"], name: "index_fortress_guards_on_saint_devil", using: :btree

  create_table "frame_type_lists", force: :cascade do |t|
    t.integer  "frame_type_id", limit: 4
    t.string   "name",          limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "frame_type_lists", ["frame_type_id"], name: "index_frame_type_lists_on_frame_type_id", using: :btree
  add_index "frame_type_lists", ["name"], name: "index_frame_type_lists_on_name", using: :btree

  create_table "fuka_lists", force: :cascade do |t|
    t.integer  "fuka_id",    limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fuka_lists", ["fuka_id"], name: "index_fuka_lists_on_fuka_id", using: :btree
  add_index "fuka_lists", ["name"], name: "index_fuka_lists_on_name", using: :btree

  create_table "items", force: :cascade do |t|
    t.integer  "result_no",       limit: 4
    t.integer  "generate_no",     limit: 4
    t.integer  "e_no",            limit: 4
    t.integer  "i_no",            limit: 4
    t.integer  "unit_type",       limit: 4
    t.integer  "orig_name",       limit: 4
    t.string   "name",            limit: 255
    t.integer  "strength",        limit: 4
    t.integer  "fuka1",           limit: 4
    t.integer  "fuka2",           limit: 4
    t.integer  "guard_elemental", limit: 4
    t.integer  "stock",           limit: 4
    t.integer  "value",           limit: 4
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

  create_table "names", force: :cascade do |t|
    t.integer  "result_no",   limit: 4
    t.integer  "generate_no", limit: 4
    t.integer  "e_no",        limit: 4
    t.string   "name",        limit: 255
    t.string   "nickname",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "names", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "names", ["name"], name: "index_names_on_name", using: :btree
  add_index "names", ["nickname"], name: "index_names_on_nickname", using: :btree

  create_table "next_battles", force: :cascade do |t|
    t.integer  "result_no",   limit: 4
    t.integer  "generate_no", limit: 4
    t.integer  "block_no",    limit: 4
    t.integer  "e_no",        limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "next_battles", ["block_no"], name: "index_next_battles_on_block_no", using: :btree
  add_index "next_battles", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree

  create_table "payoffs", force: :cascade do |t|
    t.integer  "result_no",   limit: 4
    t.integer  "generate_no", limit: 4
    t.integer  "e_no",        limit: 4
    t.integer  "mob",         limit: 4
    t.integer  "payoff",      limit: 4
    t.float    "attack",      limit: 24
    t.float    "support",     limit: 24
    t.float    "defense",     limit: 24
    t.float    "defeat",      limit: 24
    t.float    "selling",     limit: 24
    t.integer  "income",      limit: 4
    t.integer  "spending",    limit: 4
    t.integer  "profit",      limit: 4
    t.integer  "loss",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "payoffs", ["attack"], name: "index_payoffs_on_attack", using: :btree
  add_index "payoffs", ["defeat"], name: "index_payoffs_on_defeat", using: :btree
  add_index "payoffs", ["defense"], name: "index_payoffs_on_defense", using: :btree
  add_index "payoffs", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "payoffs", ["income"], name: "index_payoffs_on_income", using: :btree
  add_index "payoffs", ["loss"], name: "index_payoffs_on_loss", using: :btree
  add_index "payoffs", ["mob"], name: "index_payoffs_on_mob", using: :btree
  add_index "payoffs", ["payoff"], name: "index_payoffs_on_payoff", using: :btree
  add_index "payoffs", ["profit"], name: "index_payoffs_on_profit", using: :btree
  add_index "payoffs", ["selling"], name: "index_payoffs_on_selling", using: :btree
  add_index "payoffs", ["spending"], name: "index_payoffs_on_spending", using: :btree
  add_index "payoffs", ["support"], name: "index_payoffs_on_support", using: :btree

  create_table "regalia_lists", force: :cascade do |t|
    t.integer  "regalia_id", limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "regalia_lists", ["name"], name: "index_regalia_lists_on_name", using: :btree
  add_index "regalia_lists", ["regalia_id"], name: "index_regalia_lists_on_regalia_id", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.integer  "result_no",    limit: 4
    t.integer  "generate_no",  limit: 4
    t.integer  "e_no",         limit: 4
    t.integer  "acc_profit",   limit: 4
    t.integer  "rp",           limit: 4
    t.integer  "repute",       limit: 4
    t.integer  "charm",        limit: 4
    t.integer  "tact",         limit: 4
    t.integer  "smile",        limit: 4
    t.integer  "elegance",     limit: 4
    t.integer  "knowledge",    limit: 4
    t.integer  "perseverance", limit: 4
    t.integer  "funds",        limit: 4
    t.integer  "exp",          limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "statuses", ["acc_profit"], name: "index_statuses_on_acc_profit", using: :btree
  add_index "statuses", ["charm"], name: "index_statuses_on_charm", using: :btree
  add_index "statuses", ["e_no", "result_no", "generate_no"], name: "unique_eno", using: :btree
  add_index "statuses", ["elegance"], name: "index_statuses_on_elegance", using: :btree
  add_index "statuses", ["exp"], name: "index_statuses_on_exp", using: :btree
  add_index "statuses", ["funds"], name: "index_statuses_on_funds", using: :btree
  add_index "statuses", ["knowledge"], name: "index_statuses_on_knowledge", using: :btree
  add_index "statuses", ["perseverance"], name: "index_statuses_on_perseverance", using: :btree
  add_index "statuses", ["repute"], name: "index_statuses_on_repute", using: :btree
  add_index "statuses", ["rp"], name: "index_statuses_on_rp", using: :btree
  add_index "statuses", ["smile"], name: "index_statuses_on_smile", using: :btree
  add_index "statuses", ["tact"], name: "index_statuses_on_tact", using: :btree

  create_table "unit_orig_name_lists", force: :cascade do |t|
    t.integer  "orig_name_id", limit: 4
    t.string   "name",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_orig_name_lists", ["name"], name: "index_unit_orig_name_lists_on_name", using: :btree
  add_index "unit_orig_name_lists", ["orig_name_id"], name: "index_unit_orig_name_lists_on_orig_name_id", using: :btree

  create_table "unit_type_lists", force: :cascade do |t|
    t.integer  "type_id",    limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_type_lists", ["name"], name: "index_unit_type_lists_on_name", using: :btree
  add_index "unit_type_lists", ["type_id"], name: "index_unit_type_lists_on_type_id", using: :btree

end
