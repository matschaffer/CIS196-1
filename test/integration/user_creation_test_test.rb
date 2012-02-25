require 'test_helper'

class UserCreationTestTest < ActionDispatch::IntegrationTest
  test "creating new user" do
     visit users_path
     click_link "Register for Poolly"
     fill_in "Username", with: "test_username"
     fill_in "Password", with: "test_password"
     click_button "Create User"
     error_message = "Gender can't be blank"
     assert page.has_content?(error_message)
  end
end
