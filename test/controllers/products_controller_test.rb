require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    test "should get show" do
      get product_show_url
      assert_response :success
    end

    test "should get edit" do
      get product_edit_url
      assert_response :success
    end
end
