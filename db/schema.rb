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

ActiveRecord::Schema.define(version: 20170314001414) do

  create_table "colleges", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.string   "name"
    t.string   "uid"
    t.string   "county"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "term"
    t.string   "rubric"
    t.integer  "course_number"
    t.string   "section"
    t.integer  "credit_hours"
    t.string   "course_type"
    t.string   "day"
    t.string   "time"
    t.string   "instructor"
    t.string   "instructor_rank"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "high_schools", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.string   "name"
    t.string   "uid"
    t.string   "county"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statistics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "uid"
    t.integer  "act_math"
    t.string   "degree"
    t.string   "email"
    t.string   "ethnicity"
    t.string   "fname"
    t.string   "gender"
    t.date     "graduation"
    t.integer  "high_school"
    t.string   "lname"
    t.integer  "prior_college"
    t.integer  "transfer_hours"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "fname"
    t.string   "lname"
    t.boolean  "approved"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
