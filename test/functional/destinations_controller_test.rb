require 'test_helper'

class DestinationsControllerTest < ActionController::TestCase
  test "should get destination show" do
    get :show, {:id => Destination.first.permalink}
    assert_response :success
    assert_template :show
    assert_select 'h3', "Showing destination: #{Destination.first.name}"
    assert_tag :a, :attributes => { :href => destination_url(Destination.first) }
  end
end
