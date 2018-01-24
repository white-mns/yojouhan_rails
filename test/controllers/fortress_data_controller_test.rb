require 'test_helper'

class FortressDataControllerTest < ActionController::TestCase
  setup do
    @fortress_datum = fortress_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortress_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortress_datum" do
    assert_difference('FortressDatum.count') do
      post :create, fortress_datum: { caution: @fortress_datum.caution, continuance: @fortress_datum.continuance, drink: @fortress_datum.drink, e_no: @fortress_datum.e_no, enthusiasm: @fortress_datum.enthusiasm, forecast: @fortress_datum.forecast, generate_no: @fortress_datum.generate_no, goodwill: @fortress_datum.goodwill, grand: @fortress_datum.grand, high_grade: @fortress_datum.high_grade, mob: @fortress_datum.mob, regalia: @fortress_datum.regalia, result_no: @fortress_datum.result_no, stock: @fortress_datum.stock }
    end

    assert_redirected_to fortress_datum_path(assigns(:fortress_datum))
  end

  test "should show fortress_datum" do
    get :show, id: @fortress_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fortress_datum
    assert_response :success
  end

  test "should update fortress_datum" do
    patch :update, id: @fortress_datum, fortress_datum: { caution: @fortress_datum.caution, continuance: @fortress_datum.continuance, drink: @fortress_datum.drink, e_no: @fortress_datum.e_no, enthusiasm: @fortress_datum.enthusiasm, forecast: @fortress_datum.forecast, generate_no: @fortress_datum.generate_no, goodwill: @fortress_datum.goodwill, grand: @fortress_datum.grand, high_grade: @fortress_datum.high_grade, mob: @fortress_datum.mob, regalia: @fortress_datum.regalia, result_no: @fortress_datum.result_no, stock: @fortress_datum.stock }
    assert_redirected_to fortress_datum_path(assigns(:fortress_datum))
  end

  test "should destroy fortress_datum" do
    assert_difference('FortressDatum.count', -1) do
      delete :destroy, id: @fortress_datum
    end

    assert_redirected_to fortress_data_path
  end
end
