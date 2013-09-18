require 'test_helper'

class UniversesControllerTest < ActionController::TestCase
  setup do
    @universe = universes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:universes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create universe" do
    assert_difference('Universe.count') do
      post :create, universe: { name: @universe.name, note: @universe.note }
    end

    assert_redirected_to universe_path(assigns(:universe))
  end

  test "should show universe" do
    get :show, id: @universe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @universe
    assert_response :success
  end

  test "should update universe" do
    put :update, id: @universe, universe: { name: @universe.name, note: @universe.note }
    assert_redirected_to universe_path(assigns(:universe))
  end

  test "should destroy universe" do
    assert_difference('Universe.count', -1) do
      delete :destroy, id: @universe
    end

    assert_redirected_to universes_path
  end
end
