require 'test_helper'

class MeganeTypeListsControllerTest < ActionController::TestCase
  setup do
    @megane_type_list = megane_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:megane_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create megane_type_list" do
    assert_difference('MeganeTypeList.count') do
      post :create, megane_type_list: { megane_type_id: @megane_type_list.megane_type_id, name: @megane_type_list.name }
    end

    assert_redirected_to megane_type_list_path(assigns(:megane_type_list))
  end

  test "should show megane_type_list" do
    get :show, id: @megane_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @megane_type_list
    assert_response :success
  end

  test "should update megane_type_list" do
    patch :update, id: @megane_type_list, megane_type_list: { megane_type_id: @megane_type_list.megane_type_id, name: @megane_type_list.name }
    assert_redirected_to megane_type_list_path(assigns(:megane_type_list))
  end

  test "should destroy megane_type_list" do
    assert_difference('MeganeTypeList.count', -1) do
      delete :destroy, id: @megane_type_list
    end

    assert_redirected_to megane_type_lists_path
  end
end
