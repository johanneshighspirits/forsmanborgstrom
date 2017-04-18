require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get home_path
    assert_template 'projects/home'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    get about_path
    assert_select "title", full_title("About")
  end
end
