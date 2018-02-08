require 'test_helper'

class CastleStructureMajorTypeNumsControllerTest < ActionController::TestCase
  setup do
    @castle_structure_major_type_num = castle_structure_major_type_nums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castle_structure_major_type_nums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create castle_structure_major_type_num" do
    assert_difference('CastleStructureMajorTypeNum.count') do
      post :create, castle_structure_major_type_num: { build_num: @castle_structure_major_type_num.build_num, e_no: @castle_structure_major_type_num.e_no, generate_no: @castle_structure_major_type_num.generate_no, goods_num: @castle_structure_major_type_num.goods_num, guard_num: @castle_structure_major_type_num.guard_num, result_no: @castle_structure_major_type_num.result_no }
    end

    assert_redirected_to castle_structure_major_type_num_path(assigns(:castle_structure_major_type_num))
  end

  test "should show castle_structure_major_type_num" do
    get :show, id: @castle_structure_major_type_num
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @castle_structure_major_type_num
    assert_response :success
  end

  test "should update castle_structure_major_type_num" do
    patch :update, id: @castle_structure_major_type_num, castle_structure_major_type_num: { build_num: @castle_structure_major_type_num.build_num, e_no: @castle_structure_major_type_num.e_no, generate_no: @castle_structure_major_type_num.generate_no, goods_num: @castle_structure_major_type_num.goods_num, guard_num: @castle_structure_major_type_num.guard_num, result_no: @castle_structure_major_type_num.result_no }
    assert_redirected_to castle_structure_major_type_num_path(assigns(:castle_structure_major_type_num))
  end

  test "should destroy castle_structure_major_type_num" do
    assert_difference('CastleStructureMajorTypeNum.count', -1) do
      delete :destroy, id: @castle_structure_major_type_num
    end

    assert_redirected_to castle_structure_major_type_nums_path
  end
end
