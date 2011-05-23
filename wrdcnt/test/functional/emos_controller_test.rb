require 'test_helper'

class EmosControllerTest < ActionController::TestCase
  setup do
    @emo = emos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emo" do
    assert_difference('Emo.count') do
      post :create, :emo => @emo.attributes
    end

    assert_redirected_to emo_path(assigns(:emo))
  end

  test "should show emo" do
    get :show, :id => @emo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @emo.to_param
    assert_response :success
  end

  test "should update emo" do
    put :update, :id => @emo.to_param, :emo => @emo.attributes
    assert_redirected_to emo_path(assigns(:emo))
  end

  test "should destroy emo" do
    assert_difference('Emo.count', -1) do
      delete :destroy, :id => @emo.to_param
    end

    assert_redirected_to emos_path
  end
end
