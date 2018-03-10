require 'test_helper'

class TotalMeganesControllerTest < ActionController::TestCase
  setup do
    @total_megane = total_meganes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:total_meganes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create total_megane" do
    assert_difference('TotalMegane.count') do
      post :create, total_megane: { e_no: @total_megane.e_no, generate_no: @total_megane.generate_no, megane_count: @total_megane.megane_count, megane_type_id: @total_megane.megane_type_id, result_no: @total_megane.result_no }
    end

    assert_redirected_to total_megane_path(assigns(:total_megane))
  end

  test "should show total_megane" do
    get :show, id: @total_megane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @total_megane
    assert_response :success
  end

  test "should update total_megane" do
    patch :update, id: @total_megane, total_megane: { e_no: @total_megane.e_no, generate_no: @total_megane.generate_no, megane_count: @total_megane.megane_count, megane_type_id: @total_megane.megane_type_id, result_no: @total_megane.result_no }
    assert_redirected_to total_megane_path(assigns(:total_megane))
  end

  test "should destroy total_megane" do
    assert_difference('TotalMegane.count', -1) do
      delete :destroy, id: @total_megane
    end

    assert_redirected_to total_meganes_path
  end
end
