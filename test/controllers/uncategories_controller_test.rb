require 'test_helper'

class UncategoriesControllerTest < ActionController::TestCase
  setup do
    @uncategory = uncategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uncategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uncategory" do
    assert_difference('Uncategory.count') do
      post :create, uncategory: { category_id: @uncategory.category_id, name: @uncategory.name }
    end

    assert_redirected_to uncategory_path(assigns(:uncategory))
  end

  test "should show uncategory" do
    get :show, id: @uncategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uncategory
    assert_response :success
  end

  test "should update uncategory" do
    patch :update, id: @uncategory, uncategory: { category_id: @uncategory.category_id, name: @uncategory.name }
    assert_redirected_to uncategory_path(assigns(:uncategory))
  end

  test "should destroy uncategory" do
    assert_difference('Uncategory.count', -1) do
      delete :destroy, id: @uncategory
    end

    assert_redirected_to uncategories_path
  end
end
