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

ActiveRecord::Schema.define(version: 2019_01_10_184315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "level", default: 0
    t.float "dna", default: 0.0
    t.float "level_cost", default: 100.0
    t.integer "level2", default: 0
    t.float "level2_cost", default: 2000.0
    t.float "lifetime_dna", default: 0.0
    t.integer "level3", default: 0
    t.float "level3_cost", default: 5000.0
    t.integer "level4", default: 0
    t.float "level4_cost", default: 12000.0
    t.integer "level5", default: 0
    t.float "level5_cost", default: 50000.0
    t.integer "level6", default: 0
    t.float "level6_cost", default: 70000.0
    t.integer "level7", default: 0
    t.float "level7_cost", default: 100000.0
    t.integer "level8", default: 0
    t.float "level8_cost", default: 150000.0
    t.integer "level9", default: 0
    t.float "level9_cost", default: 1000000.0
    t.integer "level10", default: 0
    t.float "level10_cost", default: 10000000.0
  end

end
