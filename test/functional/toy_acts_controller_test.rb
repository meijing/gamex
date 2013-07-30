require 'test_helper'

class ToyActsControllerTest < ActionController::TestCase
  setup do
    @toy_act = toy_acts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toy_acts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toy_act" do
    assert_difference('ToyAct.count') do
      post :create, :toy_act => {  }
    end

    assert_redirected_to toy_act_path(assigns(:toy_act))
  end

  test "should show toy_act" do
    get :show, :id => @toy_act
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @toy_act
    assert_response :success
  end

  test "should update toy_act" do
    put :update, :id => @toy_act, :toy_act => {  }
    assert_redirected_to toy_act_path(assigns(:toy_act))
  end

  test "should destroy toy_act" do
    assert_difference('ToyAct.count', -1) do
      delete :destroy, :id => @toy_act
    end

    assert_redirected_to toy_acts_path
  end
end
