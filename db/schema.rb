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

ActiveRecord::Schema.define(version: 20140310043530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "company"
    t.string   "idea"
    t.text     "message"
    t.string   "extra"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_translations", force: true do |t|
    t.integer  "page_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "content"
  end

  add_index "page_translations", ["locale"], name: "index_page_translations_on_locale", using: :btree
  add_index "page_translations", ["page_id"], name: "index_page_translations_on_page_id", using: :btree

  create_table "pages", force: true do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["permalink"], name: "index_pages_on_permalink", using: :btree

end
