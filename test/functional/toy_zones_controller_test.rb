require 'test_helper'

class ToyZonesControllerTest < ActionController::TestCase
  setup do
    @toy_zone = toy_zones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toy_zones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toy_zone" do
    assert_difference('ToyZone.count') do
      post :create, :toy_zone => {  }
    end

    assert_redirected_to toy_zone_path(assigns(:toy_zone))
  end

  test "should show toy_zone" do
    get :show, :id => @toy_zone
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @toy_zone
    assert_response :success
  end

  test "should update toy_zone" do
    put :update, :id => @toy_zone, :toy_zone => {  }
    assert_redirected_to toy_zone_path(assigns(:toy_zone))
  end

  test "should destroy toy_zone" do
    assert_difference('ToyZone.count', -1) do
      delete :destroy, :id => @toy_zone
    end

    assert_redirected_to toy_zones_path
  end
end
