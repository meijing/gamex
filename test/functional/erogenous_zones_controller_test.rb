require 'test_helper'

class ErogenousZonesControllerTest < ActionController::TestCase
  setup do
    @erogenous_zone = erogenous_zones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:erogenous_zones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create erogenous_zone" do
    assert_difference('ErogenousZone.count') do
      post :create, :erogenous_zone => {  }
    end

    assert_redirected_to erogenous_zone_path(assigns(:erogenous_zone))
  end

  test "should show erogenous_zone" do
    get :show, :id => @erogenous_zone
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @erogenous_zone
    assert_response :success
  end

  test "should update erogenous_zone" do
    put :update, :id => @erogenous_zone, :erogenous_zone => {  }
    assert_redirected_to erogenous_zone_path(assigns(:erogenous_zone))
  end

  test "should destroy erogenous_zone" do
    assert_difference('ErogenousZone.count', -1) do
      delete :destroy, :id => @erogenous_zone
    end

    assert_redirected_to erogenous_zones_path
  end
end
