require 'test_helper'

#$base_title = "Ruby on Rails Tutorials Sample App"
class ApplicationHelperTest < ActionView::TestCase
	test "full title helper" do
		# compares the expected title and actual title of a particular page
		assert_equal full_title("Home"), "Home | Ruby on Rails Tutorials Sample App"
		assert_equal full_title("Help"), "Help | Ruby on Rails Tutorials Sample App"
		assert_equal full_title("About"), "About | Ruby on Rails Tutorials Sample App"
		assert_equal full_title("Contact"), "Contact | Ruby on Rails Tutorials Sample App"
		
	
		# checks signup page title by comparing it
		assert_equal full_title("Signup"), "Signup | Ruby on Rails Tutorials Sample App"
	end
end