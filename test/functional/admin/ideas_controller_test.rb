require 'test_helper'

class Admin::IdeasControllerTest < ActionController::TestCase
  setup do
    @idea = ideas(:btvwag)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_idea" do
    assert_difference('Idea.count') do
      post :create, idea: {  }
    end

    assert_redirected_to admin_idea_path(assigns(:idea))
  end

  test "should show idea" do
    get :show, id: @idea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idea
    assert_response :success
  end

  test "should update idea" do
    put :update, id: @idea, idea: {  }
    assert_redirected_to admin_idea_path(assigns(:idea))
  end

  test "should destroy idea" do
    assert_difference('Idea.count', -1) do
      delete :destroy, id: @idea
    end

    assert_redirected_to admin_ideas_path
  end
end
