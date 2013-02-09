require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "sitemap" do
    get sitemap_path
    assert_not_nil assigns['boats']
    assert_not_nil assigns['destinations']
  end
end
