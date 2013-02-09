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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130206091115) do

  create_table "boats", :force => true do |t|
    t.string   "supplier_guid"
    t.integer  "supplier_id"
    t.string   "name"
    t.string   "model_name"
    t.integer  "model_year"
    t.string   "description"
    t.integer  "supplier_marina_id"
    t.integer  "principal_id"
    t.integer  "boat_model_id"
    t.integer  "activated",          :default => 0
    t.string   "hull"
    t.integer  "length_ft"
    t.integer  "cabins"
    t.integer  "berths"
    t.integer  "heads"
    t.integer  "max_persons"
    t.integer  "fuel_capacity"
    t.integer  "water_capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  create_table "destinations", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.integer  "starting_price"
    t.string   "main_picture"
    t.string   "tagline"
    t.text     "introduction"
    t.string   "weather_months"
    t.integer  "weather_temperature"
    t.integer  "weather_high"
    t.integer  "weather_low"
    t.string   "yachts_url"
    t.integer  "activated",           :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

end
