require 'test_helper'

class UnitOrigNameListsControllerTest < ActionController::TestCase
  setup do
    @unit_orig_name_list = unit_orig_name_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_orig_name_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_orig_name_list" do
    assert_difference('UnitOrigNameList.count') do
      post :create, unit_orig_name_list: { name: @unit_orig_name_list.name, orig_name_id: @unit_orig_name_list.orig_name_id }
    end

    assert_redirected_to unit_orig_name_list_path(assigns(:unit_orig_name_list))
  end

  test "should show unit_orig_name_list" do
    get :show, id: @unit_orig_name_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit_orig_name_list
    assert_response :success
  end

  test "should update unit_orig_name_list" do
    patch :update, id: @unit_orig_name_list, unit_orig_name_list: { name: @unit_orig_name_list.name, orig_name_id: @unit_orig_name_list.orig_name_id }
    assert_redirected_to unit_orig_name_list_path(assigns(:unit_orig_name_list))
  end

  test "should destroy unit_orig_name_list" do
    assert_difference('UnitOrigNameList.count', -1) do
      delete :destroy, id: @unit_orig_name_list
    end

    assert_redirected_to unit_orig_name_lists_path
  end
end
