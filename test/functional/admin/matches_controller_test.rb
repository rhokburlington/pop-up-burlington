require 'test_helper'

class Admin::MatchesControllerTest < ActionController::TestCase
  setup do
    @admin_match = admin_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_match" do
    assert_difference('Admin::Match.count') do
      post :create, admin_match: {  }
    end

    assert_redirected_to admin_match_path(assigns(:admin_match))
  end

  test "should show admin_match" do
    get :show, id: @admin_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_match
    assert_response :success
  end

  test "should update admin_match" do
    put :update, id: @admin_match, admin_match: {  }
    assert_redirected_to admin_match_path(assigns(:admin_match))
  end

  test "should destroy admin_match" do
    assert_difference('Admin::Match.count', -1) do
      delete :destroy, id: @admin_match
    end

    assert_redirected_to admin_matches_path
  end
end
