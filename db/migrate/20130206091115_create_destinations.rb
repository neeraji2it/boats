class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
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
      t.timestamps
    end
  end
end
