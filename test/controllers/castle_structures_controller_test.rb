require 'test_helper'

class CastleStructuresControllerTest < ActionController::TestCase
  setup do
    @castle_structure = castle_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castle_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create castle_structure" do
    assert_difference('CastleStructure.count') do
      post :create, castle_structure: { e_no: @castle_structure.e_no, frame_type: @castle_structure.frame_type, generate_no: @castle_structure.generate_no, i_no: @castle_structure.i_no, result_no: @castle_structure.result_no }
    end

    assert_redirected_to castle_structure_path(assigns(:castle_structure))
  end

  test "should show castle_structure" do
    get :show, id: @castle_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @castle_structure
    assert_response :success
  end

  test "should update castle_structure" do
    patch :update, id: @castle_structure, castle_structure: { e_no: @castle_structure.e_no, frame_type: @castle_structure.frame_type, generate_no: @castle_structure.generate_no, i_no: @castle_structure.i_no, result_no: @castle_structure.result_no }
    assert_redirected_to castle_structure_path(assigns(:castle_structure))
  end

  test "should destroy castle_structure" do
    assert_difference('CastleStructure.count', -1) do
      delete :destroy, id: @castle_structure
    end

    assert_redirected_to castle_structures_path
  end
end
