require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Welcome to Paradox Parkway"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Welcome to Paradox Parkway"
  end

  test "should get blog" do
    get :blog
    assert_response :success
    assert_select "title", "Blog | Welcome to Paradox Parkway"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Welcome to Paradox Parkway"
  end
end
