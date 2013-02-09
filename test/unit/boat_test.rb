require 'test_helper'

class BoatTest < ActiveSupport::TestCase
  test "generation of permalink" do
  	boat = Boat.new(:name => "test-boat")
  	boat.save
  	assert_not_nil boat.permalink
  end
end
