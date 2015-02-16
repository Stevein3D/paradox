require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

  test "should get blog" do
    get :blog
    assert_response :success
    assert_select "title", "Blog | Ruby on Rails Tutorial Sample App"
  end

end
