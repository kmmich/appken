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

ActiveRecord::Schema.define(version: 20140504195211) do

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.date     "target_end_date"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "active"
  end

  create_table "candidate_elements", force: true do |t|
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidate_sources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidates", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "preferred_name"
  end

  create_table "elements", force: true do |t|
    t.string   "name"
    t.integer  "order"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campaign_id"
  end

  create_table "employer_records", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "group"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "candidate_id"
    t.integer  "employer_id"
  end

  create_table "employers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_records", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "department"
    t.string   "degree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
