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

ActiveRecord::Schema.define(version: 20151130012408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_posts", force: :cascade do |t|
    t.integer  "blog_index"
    t.text     "date"
    t.text     "title"
    t.text     "category"
    t.text     "subcategory"
    t.text     "text"
    t.text     "link"
    t.text     "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "doxes", force: :cascade do |t|
    t.integer  "paradox_index"
    t.string   "paradox_name"
    t.text     "paradox"
    t.text     "brief"
    t.text     "full_description"
    t.string   "discovery_date"
    t.string   "owner"
    t.text     "example"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "doxes", ["paradox_index"], name: "index_doxes_on_paradox_index", unique: true, using: :btree

  create_table "events", force: :cascade do |t|
    t.integer  "people_index"
    t.text     "event"
    t.string   "event_date"
    t.integer  "event_month"
    t.integer  "event_day"
    t.integer  "event_year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "event_message"
    t.integer  "title_index"
    t.integer  "event_index"
  end

  create_table "people", force: :cascade do |t|
    t.integer  "people_index"
    t.string   "full_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "birth_date"
    t.integer  "birth_month"
    t.integer  "birth_day"
    t.integer  "birth_year"
    t.string   "death_date"
    t.integer  "death_month"
    t.integer  "death_day"
    t.integer  "death_year"
    t.text     "primary_skill"
    t.text     "biography"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "birth_msg"
    t.text     "death_msg"
    t.string   "craft"
    t.string   "profession"
    t.integer  "title_index"
    t.boolean  "has_audio"
  end

  create_table "taglines", force: :cascade do |t|
    t.string   "tagline"
    t.string   "title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tagline_index"
    t.integer  "title_index"
  end

  create_table "titles", force: :cascade do |t|
    t.integer  "title_index"
    t.string   "medium"
    t.string   "sub_medium"
    t.text     "title"
    t.text     "description"
    t.string   "country"
    t.string   "genre"
    t.string   "length"
    t.string   "mpaa"
    t.string   "release_date"
    t.integer  "release_day"
    t.integer  "release_month"
    t.integer  "release_year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "episode"
    t.integer  "episode_num"
    t.integer  "season_num"
    t.text     "title_sort"
    t.string   "series_index"
    t.text     "release_msg"
    t.integer  "people_index"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
