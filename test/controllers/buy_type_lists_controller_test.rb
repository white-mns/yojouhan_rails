require 'test_helper'

class BuyTypeListsControllerTest < ActionController::TestCase
  setup do
    @buy_type_list = buy_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buy_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buy_type_list" do
    assert_difference('BuyTypeList.count') do
      post :create, buy_type_list: { buy_type_id: @buy_type_list.buy_type_id, name: @buy_type_list.name }
    end

    assert_redirected_to buy_type_list_path(assigns(:buy_type_list))
  end

  test "should show buy_type_list" do
    get :show, id: @buy_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buy_type_list
    assert_response :success
  end

  test "should update buy_type_list" do
    patch :update, id: @buy_type_list, buy_type_list: { buy_type_id: @buy_type_list.buy_type_id, name: @buy_type_list.name }
    assert_redirected_to buy_type_list_path(assigns(:buy_type_list))
  end

  test "should destroy buy_type_list" do
    assert_difference('BuyTypeList.count', -1) do
      delete :destroy, id: @buy_type_list
    end

    assert_redirected_to buy_type_lists_path
  end
end
