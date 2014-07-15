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

ActiveRecord::Schema.define(version: 20140715120859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "lead_image"
    t.datetime "published_at",                 null: false
    t.boolean  "published",    default: false
  end

  add_index "articles", ["slug"], name: "index_articles_on_slug", unique: true, using: :btree

  create_table "programmes", force: true do |t|
    t.integer  "category",    default: 0
    t.datetime "happens_at"
    t.string   "title"
    t.string   "slug"
    t.text     "description"
    t.integer  "speaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "day"
  end

  add_index "programmes", ["speaker_id"], name: "index_programmes_on_speaker_id", using: :btree

  create_table "speakers", force: true do |t|
    t.string   "slug"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "asian_name"
    t.string   "position"
    t.string   "company"
    t.string   "website_link"
    t.string   "linkedin_link"
    t.string   "twitter_link"
    t.text     "bio"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published",     default: false
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
