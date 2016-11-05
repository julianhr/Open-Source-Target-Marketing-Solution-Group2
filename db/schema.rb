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

ActiveRecord::Schema.define(version: 20161105203753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "block_groups", force: :cascade do |t|
    t.json     "properties"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "demographics", force: :cascade do |t|
    t.json     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geoid2010s", force: :cascade do |t|
    t.integer  "land_area"
    t.integer  "water_area"
    t.string   "block_id"
    t.string   "county_id"
    t.string   "funcstat"
    t.string   "geoid_id"
    t.float    "lat"
    t.float    "lon"
    t.string   "mtfcc"
    t.string   "name"
    t.string   "state_id"
    t.string   "tract_id"
    t.string   "uace"
    t.string   "uatype"
    t.string   "ur"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["geoid_id"], name: "index_geoid2010s_on_geoid_id", using: :btree
  end

end
