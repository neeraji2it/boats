class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
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

      t.timestamps
    end
  end
end
