require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
  	get root_path
  	assert_template 'static_pages/index'
  	assert_select "a[href=?]", root_path
  	assert_select "a[href=?]", about_path
  	assert_select "a[href=?]", blog_path
  	assert_select "a[href=?]", contact_path
  	assert_select "a[href=?]", signup_path
  	get signup_path
  	assert_template 'users/new'
  end
  # test "the truth" do
  #   assert true
  # end
end
