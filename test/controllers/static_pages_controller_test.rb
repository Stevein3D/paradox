require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Welcome to Paradox Parkway"
  end

  test "should get blog" do
    get :blog
    assert_response :success
    assert_select "title", "Blog | Welcome to Paradox Parkway"
  end

end
