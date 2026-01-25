# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_01_25_004533) do
  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.integer "job_id", null: false
    t.string "name"
    t.string "role"
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_contacts_on_job_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "event_date"
    t.string "event_type"
    t.integer "job_id", null: false
    t.text "notes"
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_events_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.date "applied_date"
    t.boolean "archived", default: false
    t.string "company"
    t.datetime "created_at", null: false
    t.text "description"
    t.string "location"
    t.string "salary"
    t.string "source"
    t.string "status"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contacts", "jobs"
  add_foreign_key "events", "jobs"
end
