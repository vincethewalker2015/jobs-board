# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_16_152603) do

  create_table "jobs", force: :cascade do |t|
    t.datetime "date"
    t.string "recruiter"
    t.string "recruiter_company"
    t.string "job_title"
    t.string "permanent_or_contract"
    t.string "hiring_company"
    t.text "link"
    t.boolean "cv_submitted"
    t.text "notes"
    t.string "outcome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "job_description"
  end

end
