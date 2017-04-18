require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "should not add invalid user" do
    get signup_path
    assert_select 'form[action="/signup"]'
    assert_no_difference 'User.count' do
      post users_path, params: {
        user: {
          name: "",
          email: "user@invalid",
          password: "foo",
          password: "bar"
        }
      }
    end
    assert_template 'users/new'
    # Check that error messages are shown
    assert_select 'div#error_explanation'
    assert_select 'div.alert.alert-danger'
  end

  test "should add valid user" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: {
        user: {
          name: "Example User",
          email: "user@example.com",
          password: "foobarsecret",
          password: "foobarsecret"
        }
      }
    end
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
    assert_not flash.empty?
  end


end
