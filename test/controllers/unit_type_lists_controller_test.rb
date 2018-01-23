require 'test_helper'

class UnitTypeListsControllerTest < ActionController::TestCase
  setup do
    @unit_type_list = unit_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_type_list" do
    assert_difference('UnitTypeList.count') do
      post :create, unit_type_list: { name: @unit_type_list.name, type_id: @unit_type_list.type_id }
    end

    assert_redirected_to unit_type_list_path(assigns(:unit_type_list))
  end

  test "should show unit_type_list" do
    get :show, id: @unit_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit_type_list
    assert_response :success
  end

  test "should update unit_type_list" do
    patch :update, id: @unit_type_list, unit_type_list: { name: @unit_type_list.name, type_id: @unit_type_list.type_id }
    assert_redirected_to unit_type_list_path(assigns(:unit_type_list))
  end

  test "should destroy unit_type_list" do
    assert_difference('UnitTypeList.count', -1) do
      delete :destroy, id: @unit_type_list
    end

    assert_redirected_to unit_type_lists_path
  end
end
