require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
    assert_select 'h1', "Welcome"
    assert_tag :a, :attributes => { :href => sitemap_url(:format => :xml) }
  end

  test "should get sitemap xml" do
    get :sitemap, {:format => 'xml'}
    assert_response :success
    assert_template :sitemap
    assert_not_nil assigns['boats']
    assert_not_nil assigns['destinations']
    assert_select "url" do |elements|
      assert_equal elements.size, (Boat.activated.count + Destination.activated.count + 1)
    end
  end
end
