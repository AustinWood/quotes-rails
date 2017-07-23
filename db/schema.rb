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

ActiveRecord::Schema.define(version: 20170723164938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hearings", force: :cascade do |t|
    t.integer "quote_id", null: false
    t.integer "user_id",  null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "text",       null: false
    t.integer  "said_by",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["said_by"], name: "index_quotes_on_said_by", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "phone_number",    null: false
    t.string   "name",            null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["name"], name: "index_users_on_name", using: :btree
    t.index ["phone_number"], name: "index_users_on_phone_number", unique: true, using: :btree
    t.index ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  end

end
