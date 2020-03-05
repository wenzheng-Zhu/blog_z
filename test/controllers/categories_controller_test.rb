require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get new_category_path
    assert_response :success
  end

  test "should get show" do
    get category_path
    assert_response :success
  end

  test "should get create" do
    get categories_create_url
    assert_response :success
  end

  test "should get index" do
    get categories_path
    assert_response :success
  end

  test "should get edit" do
    get categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get categories_update_url
    assert_response :success
  end

end
