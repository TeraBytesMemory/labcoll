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

ActiveRecord::Schema.define(version: 20161219091746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "laboratories", force: :cascade do |t|
    t.string   "name"
    t.string   "belong"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.string   "office"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "fund"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "laboratory_id"
  end

  add_index "projects", ["laboratory_id"], name: "index_projects_on_laboratory_id", using: :btree

  create_table "research_branches", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "researches", force: :cascade do |t|
    t.string   "specific"
    t.integer  "number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "research_branch_id"
  end

  add_index "researches", ["research_branch_id"], name: "index_researches_on_research_branch_id", using: :btree

  create_table "researches_laboratories", force: :cascade do |t|
    t.integer  "research_id"
    t.integer  "laboratory_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "researches_laboratories", ["laboratory_id"], name: "index_researches_laboratories_on_laboratory_id", using: :btree
  add_index "researches_laboratories", ["research_id"], name: "index_researches_laboratories_on_research_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "projects", "laboratories"
  add_foreign_key "researches", "research_branches"
  add_foreign_key "researches_laboratories", "laboratories"
  add_foreign_key "researches_laboratories", "researches"
end
