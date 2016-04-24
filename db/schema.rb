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

ActiveRecord::Schema.define(version: 20160424141951) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "bank_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "bank_data", force: :cascade do |t|
    t.datetime "accounted_at"
    t.string   "currency",                  limit: 255
    t.float    "balance",                   limit: 24
    t.string   "variable_symbol",           limit: 255
    t.float    "amount",                    limit: 24
    t.string   "specific_symbol",           limit: 255
    t.string   "constant_symbol",           limit: 255
    t.string   "transaction_type",          limit: 255
    t.string   "account_of_counterParty",   limit: 255
    t.string   "name_of_counterParty",      limit: 255
    t.string   "bank_of_counterParty",      limit: 255
    t.string   "information_for_recipient", limit: 255
    t.string   "information",               limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "account_id",                limit: 4
  end

  add_index "bank_data", ["account_id"], name: "index_bank_data_on_account_id", using: :btree

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",              limit: 255
    t.string   "password",           limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "encrypted_password", limit: 255
    t.string   "salt",               limit: 255
    t.string   "username",           limit: 255
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "bank_data", "accounts"
end
