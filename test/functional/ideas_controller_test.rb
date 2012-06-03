require 'test_helper'

class IdeasControllerTest < ActionController::TestCase
  setup do
    @idea = ideas(:btvwag)
  end

  test "should create idea" do
    assert_difference('Idea.count') do
      post :create, idea: {  }
    end

    assert_redirected_to root_url
  end

  test "should show idea" do
    get :show, id: @idea
    assert_response :success
  end

end
