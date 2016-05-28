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

ActiveRecord::Schema.define(version: 20160526005234) do

  create_table "articles", force: :cascade do |t|
    t.string   "thesis"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "expert_id"
    t.integer  "topic_id"
  end

  add_index "articles", ["expert_id"], name: "index_articles_on_expert_id"
  add_index "articles", ["topic_id"], name: "index_articles_on_topic_id"

  create_table "experts", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "experts", ["email"], name: "index_experts_on_email", unique: true
  add_index "experts", ["reset_password_token"], name: "index_experts_on_reset_password_token", unique: true

  create_table "rebuttals", force: :cascade do |t|
    t.string   "thesis"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "expert_id"
    t.integer  "topic_id"
  end

  add_index "rebuttals", ["expert_id"], name: "index_rebuttals_on_expert_id"
  add_index "rebuttals", ["topic_id"], name: "index_rebuttals_on_topic_id"

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "expert_id"
  end

  add_index "topics", ["expert_id"], name: "index_topics_on_expert_id"

end