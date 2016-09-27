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

ActiveRecord::Schema.define(version: 20160927025846) do

  create_table "client_reviews", force: :cascade do |t|
    t.string   "comment"
    t.integer  "rating"
    t.integer  "client_id"
    t.integer  "photographer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "email"
    t.string   "password"
    t.string   "string"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photographer_reviews", force: :cascade do |t|
    t.string   "comment"
    t.integer  "rating"
    t.integer  "client_id"
    t.integer  "photographer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "photographers", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "email"
    t.string   "password"
    t.string   "string"
    t.string   "avatar"
    t.string   "portfolio_link"
    t.string   "bio"
    t.string   "display_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "price_quotes", force: :cascade do |t|
    t.string   "description"
    t.float    "total"
    t.string   "status"
    t.integer  "client_id"
    t.integer  "photographer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
