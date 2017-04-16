require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @company_name = "Forsman & Borgström"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get projects_home_url
    assert_response :success
    assert_select "title", "#{@company_name}"
  end

  test "should get about" do
    get projects_about_url
    assert_response :success
    assert_select "title", "About | #{@company_name}"
  end

  test "should get help" do
    get projects_help_url
    assert_response :success
    assert_select "title", "Help | #{@company_name}"
  end

end
