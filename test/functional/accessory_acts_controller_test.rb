require 'test_helper'

class AccessoryActsControllerTest < ActionController::TestCase
  setup do
    @accessory_act = accessory_acts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessory_acts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessory_act" do
    assert_difference('AccessoryAct.count') do
      post :create, :accessory_act => {  }
    end

    assert_redirected_to accessory_act_path(assigns(:accessory_act))
  end

  test "should show accessory_act" do
    get :show, :id => @accessory_act
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @accessory_act
    assert_response :success
  end

  test "should update accessory_act" do
    put :update, :id => @accessory_act, :accessory_act => {  }
    assert_redirected_to accessory_act_path(assigns(:accessory_act))
  end

  test "should destroy accessory_act" do
    assert_difference('AccessoryAct.count', -1) do
      delete :destroy, :id => @accessory_act
    end

    assert_redirected_to accessory_acts_path
  end
end
