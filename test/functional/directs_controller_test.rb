require 'test_helper'

class DirectsControllerTest < ActionController::TestCase
  setup do
    @direct = directs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direct" do
    assert_difference('Direct.count') do
      post :create, direct: { message: @direct.message, username: @direct.username }
    end

    assert_redirected_to direct_path(assigns(:direct))
  end

  test "should show direct" do
    get :show, id: @direct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direct
    assert_response :success
  end

  test "should update direct" do
    put :update, id: @direct, direct: { message: @direct.message, username: @direct.username }
    assert_redirected_to direct_path(assigns(:direct))
  end

  test "should destroy direct" do
    assert_difference('Direct.count', -1) do
      delete :destroy, id: @direct
    end

    assert_redirected_to directs_path
  end
end
