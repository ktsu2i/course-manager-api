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

ActiveRecord::Schema[7.2].define(version: 2024_09_16_145201) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "record_key", null: false
    t.string "department", null: false
    t.integer "course_number", null: false
    t.integer "section", null: false
    t.integer "crn", null: false
    t.string "title", null: false
    t.string "class_type", null: false
    t.integer "room_number"
    t.boolean "has_secured_room"
    t.jsonb "schedule"
    t.string "semester", null: false
    t.integer "year", null: false
    t.integer "credits", null: false
    t.string "label", null: false
    t.string "status", default: "new"
    t.string "instructor_id", null: false
    t.text "special_info"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
