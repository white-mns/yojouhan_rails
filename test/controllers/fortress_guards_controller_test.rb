require 'test_helper'

class FortressGuardsControllerTest < ActionController::TestCase
  setup do
    @fortress_guard = fortress_guards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortress_guards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortress_guard" do
    assert_difference('FortressGuard.count') do
      post :create, fortress_guard: { cold: @fortress_guard.cold, e_no: @fortress_guard.e_no, electric_shock: @fortress_guard.electric_shock, flame: @fortress_guard.flame, generate_no: @fortress_guard.generate_no, pysics: @fortress_guard.pysics, result_no: @fortress_guard.result_no, saint_devil: @fortress_guard.saint_devil }
    end

    assert_redirected_to fortress_guard_path(assigns(:fortress_guard))
  end

  test "should show fortress_guard" do
    get :show, id: @fortress_guard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fortress_guard
    assert_response :success
  end

  test "should update fortress_guard" do
    patch :update, id: @fortress_guard, fortress_guard: { cold: @fortress_guard.cold, e_no: @fortress_guard.e_no, electric_shock: @fortress_guard.electric_shock, flame: @fortress_guard.flame, generate_no: @fortress_guard.generate_no, pysics: @fortress_guard.pysics, result_no: @fortress_guard.result_no, saint_devil: @fortress_guard.saint_devil }
    assert_redirected_to fortress_guard_path(assigns(:fortress_guard))
  end

  test "should destroy fortress_guard" do
    assert_difference('FortressGuard.count', -1) do
      delete :destroy, id: @fortress_guard
    end

    assert_redirected_to fortress_guards_path
  end
end
