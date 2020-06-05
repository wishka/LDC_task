require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  def setup
      @base_title = "Lunches Delivery Company"
    end

  test "should get welcome" do
    get static_page_welcome_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get static_page_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_page_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get static_page_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
