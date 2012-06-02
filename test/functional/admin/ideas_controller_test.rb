require 'test_helper'

class Admin::IdeasControllerTest < ActionController::TestCase
  setup do
    @admin_idea = admin_ideas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_idea" do
    assert_difference('Admin::Idea.count') do
      post :create, admin_idea: {  }
    end

    assert_redirected_to admin_idea_path(assigns(:admin_idea))
  end

  test "should show admin_idea" do
    get :show, id: @admin_idea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_idea
    assert_response :success
  end

  test "should update admin_idea" do
    put :update, id: @admin_idea, admin_idea: {  }
    assert_redirected_to admin_idea_path(assigns(:admin_idea))
  end

  test "should destroy admin_idea" do
    assert_difference('Admin::Idea.count', -1) do
      delete :destroy, id: @admin_idea
    end

    assert_redirected_to admin_ideas_path
  end
end
