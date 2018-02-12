require 'test_helper'

class MarketsControllerTest < ActionController::TestCase
  setup do
    @market = markets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market" do
    assert_difference('Market.count') do
      post :create, market: { attack: @market.attack, biattack: @market.biattack, caution: @market.caution, charge: @market.charge, continuance: @market.continuance, e_no: @market.e_no, enthusiasm: @market.enthusiasm, forecast: @market.forecast, fuka1: @market.fuka1, fuka2: @market.fuka2, generate_no: @market.generate_no, goodwill: @market.goodwill, grand: @market.grand, guard_elemental: @market.guard_elemental, guard_value: @market.guard_value, market_no: @market.market_no, name: @market.name, orig_name: @market.orig_name, result_no: @market.result_no, strength: @market.strength, tokushu: @market.tokushu, unit_type: @market.unit_type, value: @market.value }
    end

    assert_redirected_to market_path(assigns(:market))
  end

  test "should show market" do
    get :show, id: @market
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market
    assert_response :success
  end

  test "should update market" do
    patch :update, id: @market, market: { attack: @market.attack, biattack: @market.biattack, caution: @market.caution, charge: @market.charge, continuance: @market.continuance, e_no: @market.e_no, enthusiasm: @market.enthusiasm, forecast: @market.forecast, fuka1: @market.fuka1, fuka2: @market.fuka2, generate_no: @market.generate_no, goodwill: @market.goodwill, grand: @market.grand, guard_elemental: @market.guard_elemental, guard_value: @market.guard_value, market_no: @market.market_no, name: @market.name, orig_name: @market.orig_name, result_no: @market.result_no, strength: @market.strength, tokushu: @market.tokushu, unit_type: @market.unit_type, value: @market.value }
    assert_redirected_to market_path(assigns(:market))
  end

  test "should destroy market" do
    assert_difference('Market.count', -1) do
      delete :destroy, id: @market
    end

    assert_redirected_to markets_path
  end
end
