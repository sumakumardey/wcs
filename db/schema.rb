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

ActiveRecord::Schema.define(version: 20161129012517) do

  create_table "obs_observation_query", id: false, force: :cascade do |t|
    t.string  "Source",                  limit: 255
    t.integer "Waypoint ID",             limit: 4
    t.string  "Waypoint Date",           limit: 255
    t.string  "Waypoint Time",           limit: 255
    t.string  "X",                       limit: 255
    t.string  "Y",                       limit: 255
    t.string  "Comment",                 limit: 255
    t.string  "Serial Number",           limit: 255
    t.string  "Type of Equipment",       limit: 255
    t.string  "Type of Firearm",         limit: 255
    t.string  "Volume of Poison liters", limit: 255
    t.string  "Weight kg",               limit: 255
  end

  create_table "observation_waypoint_query", id: false, force: :cascade do |t|
    t.string  "Source",        limit: 255
    t.integer "Waypoint ID",   limit: 4
    t.string  "Waypoint Date", limit: 255
    t.string  "Waypoint Time", limit: 255
    t.string  "X",             limit: 255
    t.string  "Y",             limit: 255
    t.string  "Comment",       limit: 255
  end

  create_table "patrol_gridded_query", id: false, force: :cascade do |t|
    t.integer "Tile X ID", limit: 4
    t.integer "Tile Y ID", limit: 4
    t.string  "Value",     limit: 255
  end

  create_table "patrol_observation_query", id: false, force: :cascade do |t|
    t.text "Patrol ID",                    limit: 65535
    t.text "Type",                         limit: 65535
    t.text "Patrol Start Date",            limit: 65535
    t.text "Patrol End Date",              limit: 65535
    t.text "Station",                      limit: 65535
    t.text "Team",                         limit: 65535
    t.text "Objective",                    limit: 65535
    t.text "Mandate",                      limit: 65535
    t.text "Armed",                        limit: 65535
    t.text "Patrol Leg ID",                limit: 65535
    t.text "Leader",                       limit: 65535
    t.text "Pilot",                        limit: 65535
    t.text "Patrol Transport Type",        limit: 65535
    t.text "Waypoint ID",                  limit: 65535
    t.text "Waypoint Date",                limit: 65535
    t.text "Waypoint Time",                limit: 65535
    t.text "X",                            limit: 65535
    t.text "Y",                            limit: 65535
    t.text "Comment",                      limit: 65535
    t.text "Observation Category 0",       limit: 65535
    t.text "Observation Category 1",       limit: 65535
    t.text "Observation Category 2",       limit: 65535
    t.text "Observation Category 3",       limit: 65535
    t.text "Action Taken Animals",         limit: 65535
    t.text "Action Taken Camp",            limit: 65535
    t.text "Action Taken Items",           limit: 65535
    t.text "Action Taken Live Animals",    limit: 65535
    t.text "Action Taken People",          limit: 65535
    t.text "Age of Animal",                limit: 65535
    t.text "Age of Animal Carcass",        limit: 65535
    t.text "Age of Sign",                  limit: 65535
    t.text "Area Burned ha",               limit: 65535
    t.text "Caliber",                      limit: 65535
    t.text "Camp Capacity",                limit: 65535
    t.text "Camp Type",                    limit: 65535
    t.text "Cause of Death",               limit: 65535
    t.text "Fruiting Status",              limit: 65535
    t.text "Fruit or Nut Tree Species",    limit: 65535
    t.text "Has Water",                    limit: 65535
    t.text "Infraction",                   limit: 65535
    t.text "Infrastructure Size",          limit: 65535
    t.text "Is Active",                    limit: 65535
    t.text "Is Secured",                   limit: 65535
    t.text "Length of Net meters",         limit: 65535
    t.text "Manufacturer",                 limit: 65535
    t.text "Mesh Size",                    limit: 65535
    t.text "Method of Administration",     limit: 65535
    t.text "Name or Names",                limit: 65535
    t.text "National ID Number",           limit: 65535
    t.text "Number of Adult Females",      limit: 65535
    t.text "Number of Adult Males",        limit: 65535
    t.text "Number of Age or Sex Unknown", limit: 65535
    t.text "Number of Bags",               limit: 65535
    t.text "Number of Bundles",            limit: 65535
    t.text "Number of Domestic Animals",   limit: 65535
    t.text "Number of Drying Racks",       limit: 65535
    t.text "Number of Logs",               limit: 65535
    t.text "Number of People",             limit: 65535
    t.text "Number of Planks",             limit: 65535
    t.text "Number of Stumps",             limit: 65535
    t.text "Number of Transportation",     limit: 65535
    t.text "Number of Trophies",           limit: 65535
    t.text "Number of weapons or gear",    limit: 65535
    t.text "Number of Young",              limit: 65535
    t.text "People Armed",                 limit: 65535
    t.text "Person Age",                   limit: 65535
    t.text "Phone Number",                 limit: 65535
    t.text "Place of Origin",              limit: 65535
    t.text "Position Type",                limit: 65535
    t.text "Quantity",                     limit: 65535
    t.text "Registration Number",          limit: 65535
    t.text "Serial Number",                limit: 65535
    t.text "Sex",                          limit: 65535
    t.text "Species",                      limit: 65535
    t.text "Stakes to Dry Meat",           limit: 65535
    t.text "Status",                       limit: 65535
    t.text "Status of bushmeat",           limit: 65535
    t.text "Threat",                       limit: 65535
    t.text "Timber Tree Species",          limit: 65535
    t.text "Trophy missing",               limit: 65535
    t.text "Type of Ammunition",           limit: 65535
    t.text "Type of bushmeat",             limit: 65535
    t.text "Type of Cutting Tool",         limit: 65535
    t.text "Type of Domestic Animal",      limit: 65535
    t.text "Type of Equipment",            limit: 65535
    t.text "Type of Firearm",              limit: 65535
    t.text "Type of Fishing Equipment",    limit: 65535
    t.text "Type of Forest Product",       limit: 65535
    t.text "Type of Human Sign",           limit: 65535
    t.text "Type of Infrastructure",       limit: 65535
    t.text "Type of Poison",               limit: 65535
    t.text "Type of Pollution",            limit: 65535
    t.text "Type of Rock or Mineral",      limit: 65535
    t.text "Type of Salt Lick",            limit: 65535
    t.text "Type of Traditional Weapon",   limit: 65535
    t.text "Type of Transportation",       limit: 65535
    t.text "Type of Trap",                 limit: 65535
    t.text "Type of Trophy",               limit: 65535
    t.text "Units",                        limit: 65535
    t.text "Volume of Cut Pieces m3",      limit: 65535
    t.text "Volume of Poison liters",      limit: 65535
    t.text "Weight kg",                    limit: 65535
  end

  create_table "patrol_observations", force: :cascade do |t|
    t.string   "patrol_id",       limit: 255
    t.string   "patrol_type",     limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.string   "station",         limit: 255
    t.string   "team",            limit: 255
    t.string   "objective",       limit: 255
    t.string   "mandate",         limit: 255
    t.boolean  "armed"
    t.integer  "leg_id",          limit: 4
    t.datetime "waypoint_time"
    t.decimal  "lat",                         precision: 10
    t.decimal  "lon",                         precision: 10
    t.string   "category0",       limit: 255
    t.string   "category1",       limit: 255
    t.string   "category2",       limit: 255
    t.string   "category3",       limit: 255
    t.string   "names",           limit: 255
    t.string   "id_numbers",      limit: 255
    t.string   "people_observed", limit: 255
    t.integer  "person_age",      limit: 4
    t.string   "place_of_origin", limit: 255
    t.string   "threat",          limit: 255
    t.string   "sex",             limit: 255
    t.string   "species",         limit: 255
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "patrol_query", id: false, force: :cascade do |t|
    t.string  "Patrol ID",             limit: 255
    t.string  "Type",                  limit: 255
    t.string  "Patrol Start Date",     limit: 255
    t.string  "Patrol End Date",       limit: 255
    t.string  "Station",               limit: 255
    t.string  "Team",                  limit: 255
    t.string  "Objective",             limit: 255
    t.string  "Mandate",               limit: 255
    t.string  "Armed",                 limit: 255
    t.integer "Patrol Leg ID",         limit: 4
    t.string  "Leader",                limit: 255
    t.string  "Patrol Leg Start Date", limit: 255
    t.string  "Patrol Leg End Date",   limit: 255
    t.string  "Patrol Transport Type", limit: 255
  end

  create_table "patrol_summary_query", id: false, force: :cascade do |t|
    t.string "Patrol ID",                     limit: 255
    t.string "Number of Days",                limit: 255
    t.string "Number of Nights",              limit: 255
    t.string "Number of Active Patrol Hours", limit: 255
    t.string "Distance (km)",                 limit: 255
    t.string "Number of Employees",           limit: 255
  end

end
