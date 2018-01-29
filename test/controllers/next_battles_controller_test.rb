require 'test_helper'

class NextBattlesControllerTest < ActionController::TestCase
  setup do
    @next_battle = next_battles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:next_battles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create next_battle" do
    assert_difference('NextBattle.count') do
      post :create, next_battle: { block_no: @next_battle.block_no, e_no: @next_battle.e_no, generate_no: @next_battle.generate_no, result_no: @next_battle.result_no }
    end

    assert_redirected_to next_battle_path(assigns(:next_battle))
  end

  test "should show next_battle" do
    get :show, id: @next_battle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @next_battle
    assert_response :success
  end

  test "should update next_battle" do
    patch :update, id: @next_battle, next_battle: { block_no: @next_battle.block_no, e_no: @next_battle.e_no, generate_no: @next_battle.generate_no, result_no: @next_battle.result_no }
    assert_redirected_to next_battle_path(assigns(:next_battle))
  end

  test "should destroy next_battle" do
    assert_difference('NextBattle.count', -1) do
      delete :destroy, id: @next_battle
    end

    assert_redirected_to next_battles_path
  end
end
