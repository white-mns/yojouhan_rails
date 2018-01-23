require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { e_no: @item.e_no, fuka1: @item.fuka1, fuka2: @item.fuka2, generate_no: @item.generate_no, guard_elemental: @item.guard_elemental, i_no: @item.i_no, name: @item.name, orig_name: @item.orig_name, result_no: @item.result_no, stock: @item.stock, strength: @item.strength, type: @item.type, value: @item.value }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { e_no: @item.e_no, fuka1: @item.fuka1, fuka2: @item.fuka2, generate_no: @item.generate_no, guard_elemental: @item.guard_elemental, i_no: @item.i_no, name: @item.name, orig_name: @item.orig_name, result_no: @item.result_no, stock: @item.stock, strength: @item.strength, type: @item.type, value: @item.value }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
