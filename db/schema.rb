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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geoid_meta", id: false, force: :cascade do |t|
    t.integer "land_area_2010"
    t.integer "water_area_2010"
    t.string  "block_id_2010",   limit: 4
    t.string  "county_id_2010",  limit: 3
    t.string  "funcstat_2010",   limit: 1
    t.string  "id",              limit: 15
    t.float   "lat_2010"
    t.float   "lon_2010"
    t.string  "mtfcc_2010",      limit: 5
    t.string  "name_2010",       limit: 10
    t.string  "state_id_2010",   limit: 2
    t.string  "tract_id_2010",   limit: 6
    t.string  "uace_2010",       limit: 5
    t.string  "uatype_2010",     limit: 1
    t.string  "ur_2010",         limit: 1
  end

end
