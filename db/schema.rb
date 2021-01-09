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

ActiveRecord::Schema.define(version: 2021_01_07_141200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accident_types", force: :cascade do |t|
    t.bigint "accident_id", null: false
    t.text "accident_type_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accident_id"], name: "index_accident_types_on_accident_id"
  end

  create_table "accidents", force: :cascade do |t|
    t.text "accident_description"
    t.datetime "accident_date"
    t.string "accident_location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "employee_id", null: false
    t.index ["employee_id"], name: "index_accidents_on_employee_id"
  end

  create_table "damage_levels", force: :cascade do |t|
    t.bigint "accident_id", null: false
    t.string "damage_code"
    t.string "seriousness_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accident_id"], name: "index_damage_levels_on_accident_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "supervisor_id"
    t.index ["supervisor_id"], name: "index_employees_on_supervisor_id"
  end

  add_foreign_key "accident_types", "accidents"
  add_foreign_key "accidents", "employees"
  add_foreign_key "damage_levels", "accidents"
  add_foreign_key "employees", "employees", column: "supervisor_id"
end
