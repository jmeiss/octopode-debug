require 'test_helper'

class UsersUserTest < ActionUser::TestCase
  setup do
    @controller = controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controller" do
    assert_difference('User.count') do
      post :create, controller: { email: @controller.email, users: @controller.users }
    end

    assert_redirected_to controller_path(assigns(:controller))
  end

  test "should show controller" do
    get :show, id: @controller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controller
    assert_response :success
  end

  test "should update controller" do
    put :update, id: @controller, controller: { email: @controller.email, users: @controller.users }
    assert_redirected_to controller_path(assigns(:controller))
  end

  test "should destroy controller" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @controller
    end

    assert_redirected_to controllers_path
  end
end
