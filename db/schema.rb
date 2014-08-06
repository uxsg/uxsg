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

ActiveRecord::Schema.define(version: 20140806063613) do

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

  create_table "industry_tracks", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programme_speakers", force: true do |t|
    t.integer  "programme_id"
    t.integer  "speaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programme_speakers", ["programme_id", "speaker_id"], name: "index_programme_speakers_on_programme_id_and_speaker_id", unique: true, using: :btree
  add_index "programme_speakers", ["programme_id"], name: "index_programme_speakers_on_programme_id", using: :btree
  add_index "programme_speakers", ["speaker_id"], name: "index_programme_speakers_on_speaker_id", using: :btree

  create_table "programmes", force: true do |t|
    t.integer  "category",          default: 0
    t.datetime "happens_at"
    t.string   "title"
    t.string   "slug"
    t.text     "description"
    t.integer  "speaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "day"
    t.integer  "industry_track_id"
  end

  add_index "programmes", ["speaker_id"], name: "index_programmes_on_speaker_id", using: :btree

  create_table "programmes_speakers", force: true do |t|
    t.integer "speaker_id"
    t.integer "programme_id"
  end

  add_index "programmes_speakers", ["programme_id"], name: "index_programmes_speakers_on_programme_id", using: :btree
  add_index "programmes_speakers", ["speaker_id", "programme_id"], name: "index_programmes_speakers_on_speaker_id_and_programme_id", unique: true, using: :btree
  add_index "programmes_speakers", ["speaker_id"], name: "index_programmes_speakers_on_speaker_id", using: :btree

  create_table "publications", force: true do |t|
    t.string   "title"
    t.string   "publication_type"
    t.string   "url"
    t.string   "image"
    t.integer  "speaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publications", ["speaker_id"], name: "index_publications_on_speaker_id", using: :btree

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

  create_table "sponsors", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "sponsor_type"
    t.string   "url"
    t.text     "description"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
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
