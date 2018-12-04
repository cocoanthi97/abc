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

ActiveRecord::Schema.define(version: 20181129071747) do

  create_table "books", force: :cascade do |t|
    t.date     "date"
    t.integer  "time"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books", ["subject_id"], name: "index_books_on_subject_id"

  create_table "subject_time_table_times", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "time_table_time_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "subject_time_table_times", ["subject_id"], name: "index_subject_time_table_times_on_subject_id"
  add_index "subject_time_table_times", ["time_table_time_id"], name: "index_subject_time_table_times_on_time_table_time_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "time_table_times_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "time_table_days", force: :cascade do |t|
    t.integer  "time_table_times_id"
    t.integer  "time_table_week_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "time_table_days", ["time_table_times_id"], name: "index_time_table_days_on_time_table_times_id"

  create_table "time_table_times", force: :cascade do |t|
    t.integer  "time_table_day_id"
    t.integer  "subjects_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "time_table_weeks", force: :cascade do |t|
    t.integer  "time_table_days_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "time_table_weeks", ["time_table_days_id"], name: "index_time_table_weeks_on_time_table_days_id"

end
