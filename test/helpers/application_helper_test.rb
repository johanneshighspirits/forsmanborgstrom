require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    base_title = "Forsman & Borgström"
    assert_equal full_title, base_title
    assert_equal full_title("Contact"), "Contact | #{base_title}"
  end