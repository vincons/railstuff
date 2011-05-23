require 'test_helper'

class Tst1sControllerTest < ActionController::TestCase
  setup do
    @tst1 = tst1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tst1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tst1" do
    assert_difference('Tst1.count') do
      post :create, :tst1 => @tst1.attributes
    end

    assert_redirected_to tst1_path(assigns(:tst1))
  end

  test "should show tst1" do
    get :show, :id => @tst1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tst1.to_param
    assert_response :success
  end

  test "should update tst1" do
    put :update, :id => @tst1.to_param, :tst1 => @tst1.attributes
    assert_redirected_to tst1_path(assigns(:tst1))
  end

  test "should destroy tst1" do
    assert_difference('Tst1.count', -1) do
      delete :destroy, :id => @tst1.to_param
    end

    assert_redirected_to tst1s_path
  end
end
