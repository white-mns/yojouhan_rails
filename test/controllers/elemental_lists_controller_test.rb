require 'test_helper'

class ElementalListsControllerTest < ActionController::TestCase
  setup do
    @elemental_list = elemental_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elemental_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elemental_list" do
    assert_difference('ElementalList.count') do
      post :create, elemental_list: { elemental_id: @elemental_list.elemental_id, name: @elemental_list.name }
    end

    assert_redirected_to elemental_list_path(assigns(:elemental_list))
  end

  test "should show elemental_list" do
    get :show, id: @elemental_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elemental_list
    assert_response :success
  end

  test "should update elemental_list" do
    patch :update, id: @elemental_list, elemental_list: { elemental_id: @elemental_list.elemental_id, name: @elemental_list.name }
    assert_redirected_to elemental_list_path(assigns(:elemental_list))
  end

  test "should destroy elemental_list" do
    assert_difference('ElementalList.count', -1) do
      delete :destroy, id: @elemental_list
    end

    assert_redirected_to elemental_lists_path
  end
end
