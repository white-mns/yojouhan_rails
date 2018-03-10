require 'test_helper'

class AccMeganesControllerTest < ActionController::TestCase
  setup do
    @acc_megane = acc_meganes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acc_meganes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acc_megane" do
    assert_difference('AccMegane.count') do
      post :create, acc_megane: { e_no: @acc_megane.e_no, generate_no: @acc_megane.generate_no, megane_count: @acc_megane.megane_count, megane_type_id: @acc_megane.megane_type_id, result_no: @acc_megane.result_no }
    end

    assert_redirected_to acc_megane_path(assigns(:acc_megane))
  end

  test "should show acc_megane" do
    get :show, id: @acc_megane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acc_megane
    assert_response :success
  end

  test "should update acc_megane" do
    patch :update, id: @acc_megane, acc_megane: { e_no: @acc_megane.e_no, generate_no: @acc_megane.generate_no, megane_count: @acc_megane.megane_count, megane_type_id: @acc_megane.megane_type_id, result_no: @acc_megane.result_no }
    assert_redirected_to acc_megane_path(assigns(:acc_megane))
  end

  test "should destroy acc_megane" do
    assert_difference('AccMegane.count', -1) do
      delete :destroy, id: @acc_megane
    end

    assert_redirected_to acc_meganes_path
  end
end
