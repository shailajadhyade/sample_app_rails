require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
  end

  #test "should get users" do
  #	get show_path
  	#assert_response :success
  #end
end
