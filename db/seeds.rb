# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Boat.create(:name => "Boat-#{Boat.count + 1}", :activated => 1)
Boat.create(:name => "Boat-#{Boat.count + 1}", :activated => 1)
Boat.create(:name => "Boat-#{Boat.count + 1}", :activated => 1)
Boat.create(:name => "Boat-#{Boat.count + 1}", :activated => 1)
Boat.create(:name => "Boat-#{Boat.count + 1}", :activated => 1)

Destination.create(:name => "Destination-#{Destination.count + 1}", :activated => 1)
Destination.create(:name => "Destination-#{Destination.count + 1}", :activated => 1)
Destination.create(:name => "Destination-#{Destination.count + 1}", :activated => 1)
Destination.create(:name => "Destination-#{Destination.count + 1}", :activated => 1)
Destination.create(:name => "Destination-#{Destination.count + 1}", :activated => 1)
