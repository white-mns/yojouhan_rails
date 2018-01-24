require 'test_helper'

class RegaliaListsControllerTest < ActionController::TestCase
  setup do
    @regalia_list = regalia_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regalia_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regalia_list" do
    assert_difference('RegaliaList.count') do
      post :create, regalia_list: { name: @regalia_list.name, regalia_id: @regalia_list.regalia_id }
    end

    assert_redirected_to regalia_list_path(assigns(:regalia_list))
  end

  test "should show regalia_list" do
    get :show, id: @regalia_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regalia_list
    assert_response :success
  end

  test "should update regalia_list" do
    patch :update, id: @regalia_list, regalia_list: { name: @regalia_list.name, regalia_id: @regalia_list.regalia_id }
    assert_redirected_to regalia_list_path(assigns(:regalia_list))
  end

  test "should destroy regalia_list" do
    assert_difference('RegaliaList.count', -1) do
      delete :destroy, id: @regalia_list
    end

    assert_redirected_to regalia_lists_path
  end
end
