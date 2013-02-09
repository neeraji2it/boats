require 'test_helper'

class BoatsControllerTest < ActionController::TestCase
  test "should get boat show" do
    get :show, {:id => Boat.first.permalink}
    assert_response :success
    assert_template :show
    assert_select 'h3', "Showing yacht: #{Boat.first.name}"
    assert_tag :a, :attributes => { :href => boat_url(Boat.first) }
  end
end
