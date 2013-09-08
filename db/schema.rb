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

ActiveRecord::Schema.define(version: 20130904130437) do

  create_table "assignments", force: true do |t|
    t.integer  "driver_id"
    t.integer  "tractor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.integer  "driver_number"
    t.integer  "age"
    t.boolean  "status"
    t.integer  "exp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drivers", ["name"], name: "index_drivers_on_name"

  create_table "tractors", force: true do |t|
    t.integer  "unit_number"
    t.integer  "unit_year"
    t.integer  "mileage"
    t.integer  "fuel_range"
    t.date     "last_pm"
    t.boolean  "fleet_unit",  default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "truck_model"
  end

  add_index "tractors", ["unit_number"], name: "index_tractors_on_unit_number"

  create_table "truck_assigments", force: true do |t|
    t.integer  "driver_id"
    t.integer  "tractor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "truck_assigments", ["driver_id"], name: "index_truck_assigments_on_driver_id"
  add_index "truck_assigments", ["tractor_id"], name: "index_truck_assigments_on_tractor_id"

end
