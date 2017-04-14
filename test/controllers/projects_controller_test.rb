require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get projects_home_url
    assert_response :success
  end

  test "should get about" do
    get projects_about_url
    assert_response :success
  end

end
