require 'test_helper'

class FukaListsControllerTest < ActionController::TestCase
  setup do
    @fuka_list = fuka_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuka_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuka_list" do
    assert_difference('FukaList.count') do
      post :create, fuka_list: { fuka_id: @fuka_list.fuka_id, name: @fuka_list.name }
    end

    assert_redirected_to fuka_list_path(assigns(:fuka_list))
  end

  test "should show fuka_list" do
    get :show, id: @fuka_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuka_list
    assert_response :success
  end

  test "should update fuka_list" do
    patch :update, id: @fuka_list, fuka_list: { fuka_id: @fuka_list.fuka_id, name: @fuka_list.name }
    assert_redirected_to fuka_list_path(assigns(:fuka_list))
  end

  test "should destroy fuka_list" do
    assert_difference('FukaList.count', -1) do
      delete :destroy, id: @fuka_list
    end

    assert_redirected_to fuka_lists_path
  end
end
