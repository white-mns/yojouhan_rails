require 'test_helper'

class CastleConditionListsControllerTest < ActionController::TestCase
  setup do
    @castle_condition_list = castle_condition_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castle_condition_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create castle_condition_list" do
    assert_difference('CastleConditionList.count') do
      post :create, castle_condition_list: { castle_condition_id: @castle_condition_list.castle_condition_id, name: @castle_condition_list.name }
    end

    assert_redirected_to castle_condition_list_path(assigns(:castle_condition_list))
  end

  test "should show castle_condition_list" do
    get :show, id: @castle_condition_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @castle_condition_list
    assert_response :success
  end

  test "should update castle_condition_list" do
    patch :update, id: @castle_condition_list, castle_condition_list: { castle_condition_id: @castle_condition_list.castle_condition_id, name: @castle_condition_list.name }
    assert_redirected_to castle_condition_list_path(assigns(:castle_condition_list))
  end

  test "should destroy castle_condition_list" do
    assert_difference('CastleConditionList.count', -1) do
      delete :destroy, id: @castle_condition_list
    end

    assert_redirected_to castle_condition_lists_path
  end
end
