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

ActiveRecord::Schema.define(version: 2019_03_22_032055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessibilities", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "administrators", force: :cascade do |t|
    t.bigint "maker_id", null: false
    t.bigint "makerspace_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_administrators_on_maker_id"
    t.index ["makerspace_id"], name: "index_administrators_on_makerspace_id"
  end

  create_table "age_groups", force: :cascade do |t|
    t.string "name", null: false
    t.integer "minimum_age", null: false
    t.integer "maximum_age", null: false
  end

  create_table "badges", force: :cascade do |t|
    t.string "name", null: false
    t.integer "level"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "start_time", null: false
    t.datetime "end_date", null: false
    t.bigint "tool_id", null: false
    t.bigint "maker_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_bookings_on_maker_id"
    t.index ["tool_id"], name: "index_bookings_on_tool_id"
  end

  create_table "chats", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "body", null: false
    t.bigint "post_id", null: false
    t.bigint "maker_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_comments_on_maker_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "maker_id"
    t.bigint "project_id"
    t.bigint "makerspace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_features_on_maker_id"
    t.index ["makerspace_id"], name: "index_features_on_makerspace_id"
    t.index ["project_id"], name: "index_features_on_project_id"
  end

  create_table "feeds", force: :cascade do |t|
    t.bigint "maker_id", null: false
    t.index ["maker_id"], name: "index_feeds_on_maker_id"
  end

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id", null: false
    t.integer "following_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makers", force: :cascade do |t|
    t.string "username", null: false
    t.string "first_name", null: false
    t.string "last_name"
    t.integer "age", null: false
    t.string "email", null: false
    t.integer "phone_number"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makerspaces", force: :cascade do |t|
    t.string "name", null: false
    t.string "street", null: false
    t.string "city", null: false
    t.string "country", null: false
    t.string "zip_code", null: false
    t.string "website", null: false
    t.string "email", null: false
    t.string "mission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "maker_id", null: false
    t.integer "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string "name", null: false
    t.date "date", null: false
    t.time "time", null: false
    t.bigint "makerspace_id", null: false
    t.bigint "maker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_meetings_on_maker_id"
    t.index ["makerspace_id"], name: "index_meetings_on_makerspace_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "maker_id", null: false
    t.bigint "makerspace_id", null: false
    t.bigint "payment_plan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_memberships_on_maker_id"
    t.index ["makerspace_id"], name: "index_memberships_on_makerspace_id"
    t.index ["payment_plan_id"], name: "index_memberships_on_payment_plan_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "body", null: false
    t.bigint "maker_id", null: false
    t.bigint "chat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["maker_id"], name: "index_messages_on_maker_id"
  end

  create_table "offerings", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_plans", force: :cascade do |t|
    t.string "name", null: false
    t.string "type", null: false
    t.integer "amount", null: false
    t.string "frequency", null: false
    t.bigint "makerspace_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["makerspace_id"], name: "index_payment_plans_on_makerspace_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.string "body", null: false
    t.bigint "feed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feed_id"], name: "index_posts_on_feed_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "talents", force: :cascade do |t|
    t.bigint "maker_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_talents_on_maker_id"
    t.index ["skill_id"], name: "index_talents_on_skill_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name", null: false
    t.integer "danger", null: false
    t.string "description"
    t.bigint "maker_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maker_id"], name: "index_tools_on_maker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
