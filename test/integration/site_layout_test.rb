require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
  	#To get the root path
  	get root_path
  	#To verify that the right page template is rendered
  	assert_template 'static_pages/home'
  	#To check for the correct links to the Home, Help, About, and Contact pages.
  	assert_select "a[href=?]", root_path, count:2
  	assert_select "a[href=?]", help_path
  	assert_select "a[href=?]", about_path
  	assert_select "a[href=?]", contact_path
    
    assert_select "a[href=?]", new_user_path

  	#to test for the right title and checks them using assert_equal in application_helper_test.rb file
  	get root_path
  	assert_select "title", full_title("Home")
  	get help_path
  	assert_select "title", full_title("Help")
  	get about_path
  	assert_select "title", full_title("About")
  	get contact_path
    assert_select "title", full_title("Contact")

    #testing the right title of user controller signup page 
    get signup_path
    assert_select "title", full_title("Signup")
  end
end
