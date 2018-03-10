require 'test_helper'

class MeganesControllerTest < ActionController::TestCase
  setup do
    @megane = meganes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meganes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create megane" do
    assert_difference('Megane.count') do
      post :create, megane: { e_no: @megane.e_no, generate_no: @megane.generate_no, megane_count: @megane.megane_count, megane_type_id: @megane.megane_type_id, page_no: @megane.page_no, page_type: @megane.page_type, result_no: @megane.result_no }
    end

    assert_redirected_to megane_path(assigns(:megane))
  end

  test "should show megane" do
    get :show, id: @megane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @megane
    assert_response :success
  end

  test "should update megane" do
    patch :update, id: @megane, megane: { e_no: @megane.e_no, generate_no: @megane.generate_no, megane_count: @megane.megane_count, megane_type_id: @megane.megane_type_id, page_no: @megane.page_no, page_type: @megane.page_type, result_no: @megane.result_no }
    assert_redirected_to megane_path(assigns(:megane))
  end

  test "should destroy megane" do
    assert_difference('Megane.count', -1) do
      delete :destroy, id: @megane
    end

    assert_redirected_to meganes_path
  end
end
