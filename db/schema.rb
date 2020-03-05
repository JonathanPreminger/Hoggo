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

ActiveRecord::Schema.define(version: 2020_03_03_152314) do

  create_table "assurances", force: :cascade do |t|
    t.string "email"
    t.string "social_reason"
    t.string "siret"
    t.string "siren"
    t.string "naf_code"
    t.integer "annual_incomes"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type"
    t.integer "building_size"
    t.integer "floor_number"
    t.integer "culture_type"
    t.boolean "dry_zone"
    t.integer "licence_points"
    t.string "car_model"
    t.integer "registration_number"
    t.text "serialized_options"
  end

end
