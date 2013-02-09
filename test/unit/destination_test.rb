require 'test_helper'

class DestinationTest < ActiveSupport::TestCase
  test "generation of permalink" do
  	destination = Destination.new(:name => "test destination")
  	destination.save
  	assert_not_nil	destination.permalink
  end
end
