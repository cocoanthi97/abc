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

ActiveRecord::Schema.define(version: 20181213083105) do

  create_table "books", force: :cascade do |t|
    t.date     "date"
    t.integer  "time"
    t.integer  "subject_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_books_on_subject_id"
  end

  create_table "subject_passed_subjects", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_subject_passed_subjects_on_subject_id"
    t.index ["user_id"], name: "index_subject_passed_subjects_on_user_id"
  end

  create_table "subject_require_subjects", force: :cascade do |t|
    t.integer  "require_subject_id"
    t.integer  "required_subject_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["require_subject_id"], name: "index_subject_require_subjects_on_require_subject_id"
    t.index ["required_subject_id"], name: "index_subject_require_subjects_on_required_subject_id"
  end

  create_table "subject_time_table_times", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "time_table_time_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["subject_id"], name: "index_subject_time_table_times_on_subject_id"
    t.index ["time_table_time_id"], name: "index_subject_time_table_times_on_time_table_time_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "time_table_times_id"
    t.integer  "time_tables_id"
    t.integer  "require_subjects_id"
    t.integer  "required_subjects_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["require_subjects_id"], name: "index_subjects_on_require_subjects_id"
    t.index ["required_subjects_id"], name: "index_subjects_on_required_subjects_id"
  end

  create_table "time_table_days", force: :cascade do |t|
    t.integer  "time_table_times_id"
    t.integer  "time_table_week_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["time_table_times_id"], name: "index_time_table_days_on_time_table_times_id"
  end

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
    t.index ["time_table_days_id"], name: "index_time_table_weeks_on_time_table_days_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "book_id"
    t.integer  "passed_subjects_id"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["book_id"], name: "index_users_on_book_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["passed_subjects_id"], name: "index_users_on_passed_subjects_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
