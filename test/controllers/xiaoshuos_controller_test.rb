require 'test_helper'

class XiaoshuosControllerTest < ActionController::TestCase
  setup do
    @xiaoshuo = xiaoshuos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xiaoshuos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xiaoshuo" do
    assert_difference('Xiaoshuo.count') do
      post :create, xiaoshuo: { content: @xiaoshuo.content, title: @xiaoshuo.title, user_id: @xiaoshuo.user_id }
    end

    assert_redirected_to xiaoshuo_path(assigns(:xiaoshuo))
  end

  test "should show xiaoshuo" do
    get :show, id: @xiaoshuo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xiaoshuo
    assert_response :success
  end

  test "should update xiaoshuo" do
    patch :update, id: @xiaoshuo, xiaoshuo: { content: @xiaoshuo.content, title: @xiaoshuo.title, user_id: @xiaoshuo.user_id }
    assert_redirected_to xiaoshuo_path(assigns(:xiaoshuo))
  end

  test "should destroy xiaoshuo" do
    assert_difference('Xiaoshuo.count', -1) do
      delete :destroy, id: @xiaoshuo
    end

    assert_redirected_to xiaoshuos_path
  end
end
