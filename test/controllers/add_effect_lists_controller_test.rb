require 'test_helper'

class AddEffectListsControllerTest < ActionController::TestCase
  setup do
    @add_effect_list = add_effect_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_effect_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_effect_list" do
    assert_difference('AddEffectList.count') do
      post :create, add_effect_list: { add_effect_id: @add_effect_list.add_effect_id, name: @add_effect_list.name }
    end

    assert_redirected_to add_effect_list_path(assigns(:add_effect_list))
  end

  test "should show add_effect_list" do
    get :show, id: @add_effect_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_effect_list
    assert_response :success
  end

  test "should update add_effect_list" do
    patch :update, id: @add_effect_list, add_effect_list: { add_effect_id: @add_effect_list.add_effect_id, name: @add_effect_list.name }
    assert_redirected_to add_effect_list_path(assigns(:add_effect_list))
  end

  test "should destroy add_effect_list" do
    assert_difference('AddEffectList.count', -1) do
      delete :destroy, id: @add_effect_list
    end

    assert_redirected_to add_effect_lists_path
  end
end
