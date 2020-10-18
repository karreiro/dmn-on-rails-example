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

ActiveRecord::Schema.define(version: 2020_10_13_215940) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.integer "age"
    t.string "picture_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "suspended"
  end

  create_table "violations", force: :cascade do |t|
    t.string "violation_type"
    t.float "speed_limit"
    t.float "actual_speed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "driver_id"
    t.index ["driver_id"], name: "index_violations_on_driver_id"
  end

end
