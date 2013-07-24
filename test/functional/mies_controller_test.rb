require 'test_helper'

class MiesControllerTest < ActionController::TestCase
  setup do
    @my = mies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my" do
    assert_difference('My.count') do
      post :create, my: { title: @my.title }
    end

    assert_redirected_to my_path(assigns(:my))
  end

  test "should show my" do
    get :show, id: @my
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my
    assert_response :success
  end

  test "should update my" do
    put :update, id: @my, my: { title: @my.title }
    assert_redirected_to my_path(assigns(:my))
  end

  test "should destroy my" do
    assert_difference('My.count', -1) do
      delete :destroy, id: @my
    end

    assert_redirected_to mies_path
  end
end
