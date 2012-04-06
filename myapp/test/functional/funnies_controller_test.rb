require 'test_helper'

class FunniesControllerTest < ActionController::TestCase
  setup do
    @funny = funnies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funnies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funny" do
    assert_difference('Funny.count') do
      post :create, funny: { joke: @funny.joke }
    end

    assert_redirected_to funny_path(assigns(:funny))
  end

  test "should show funny" do
    get :show, id: @funny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funny
    assert_response :success
  end

  test "should update funny" do
    put :update, id: @funny, funny: { joke: @funny.joke }
    assert_redirected_to funny_path(assigns(:funny))
  end

  test "should destroy funny" do
    assert_difference('Funny.count', -1) do
      delete :destroy, id: @funny
    end

    assert_redirected_to funnies_path
  end
end
