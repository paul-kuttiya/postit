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

ActiveRecord::Schema.define(version: 20170601051516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "slug", limit: 255
  end

  create_table "comments", id: :serial, force: :cascade do |t|
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.integer "post_id"
  end

  create_table "post_categories", id: :serial, force: :cascade do |t|
    t.integer "post_id"
    t.integer "category_id"
  end

  create_table "posts", id: :serial, force: :cascade do |t|
    t.string "url", limit: 255
    t.string "title", limit: 255
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.string "slug", limit: 255
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "username", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "password_digest", limit: 255
    t.string "slug", limit: 255
    t.string "role", limit: 255
    t.string "time_zone", limit: 255
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.boolean "vote"
    t.integer "user_id"
    t.string "voteable_type", limit: 255
    t.integer "voteable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
