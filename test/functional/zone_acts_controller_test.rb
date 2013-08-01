require 'test_helper'

class ZoneActsControllerTest < ActionController::TestCase
  setup do
    @zone_act = zone_acts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zone_acts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zone_act" do
    assert_difference('ZoneAct.count') do
      post :create, :zone_act => {  }
    end

    assert_redirected_to zone_act_path(assigns(:zone_act))
  end

  test "should show zone_act" do
    get :show, :id => @zone_act
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @zone_act
    assert_response :success
  end

  test "should update zone_act" do
    put :update, :id => @zone_act, :zone_act => {  }
    assert_redirected_to zone_act_path(assigns(:zone_act))
  end

  test "should destroy zone_act" do
    assert_difference('ZoneAct.count', -1) do
      delete :destroy, :id => @zone_act
    end

    assert_redirected_to zone_acts_path
  end
end
