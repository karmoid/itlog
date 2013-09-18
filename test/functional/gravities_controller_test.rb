require 'test_helper'

class GravitiesControllerTest < ActionController::TestCase
  setup do
    @gravity = gravities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gravities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gravity" do
    assert_difference('Gravity.count') do
      post :create, gravity: { component_id: @gravity.component_id, connected_to: @gravity.connected_to }
    end

    assert_redirected_to gravity_path(assigns(:gravity))
  end

  test "should show gravity" do
    get :show, id: @gravity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gravity
    assert_response :success
  end

  test "should update gravity" do
    put :update, id: @gravity, gravity: { component_id: @gravity.component_id, connected_to: @gravity.connected_to }
    assert_redirected_to gravity_path(assigns(:gravity))
  end

  test "should destroy gravity" do
    assert_difference('Gravity.count', -1) do
      delete :destroy, id: @gravity
    end

    assert_redirected_to gravities_path
  end
end
