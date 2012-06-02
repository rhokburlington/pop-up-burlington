require 'test_helper'

class Admin::SpacesControllerTest < ActionController::TestCase
  setup do
    @admin_space = admin_spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_space" do
    assert_difference('Admin::Space.count') do
      post :create, admin_space: {  }
    end

    assert_redirected_to admin_space_path(assigns(:admin_space))
  end

  test "should show admin_space" do
    get :show, id: @admin_space
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_space
    assert_response :success
  end

  test "should update admin_space" do
    put :update, id: @admin_space, admin_space: {  }
    assert_redirected_to admin_space_path(assigns(:admin_space))
  end

  test "should destroy admin_space" do
    assert_difference('Admin::Space.count', -1) do
      delete :destroy, id: @admin_space
    end

    assert_redirected_to admin_spaces_path
  end
end
