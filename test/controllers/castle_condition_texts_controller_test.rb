require 'test_helper'

class CastleConditionTextsControllerTest < ActionController::TestCase
  setup do
    @castle_condition_text = castle_condition_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castle_condition_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create castle_condition_text" do
    assert_difference('CastleConditionText.count') do
      post :create, castle_condition_text: { condition_text: @castle_condition_text.condition_text, e_no: @castle_condition_text.e_no, generate_no: @castle_condition_text.generate_no, result_no: @castle_condition_text.result_no }
    end

    assert_redirected_to castle_condition_text_path(assigns(:castle_condition_text))
  end

  test "should show castle_condition_text" do
    get :show, id: @castle_condition_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @castle_condition_text
    assert_response :success
  end

  test "should update castle_condition_text" do
    patch :update, id: @castle_condition_text, castle_condition_text: { condition_text: @castle_condition_text.condition_text, e_no: @castle_condition_text.e_no, generate_no: @castle_condition_text.generate_no, result_no: @castle_condition_text.result_no }
    assert_redirected_to castle_condition_text_path(assigns(:castle_condition_text))
  end

  test "should destroy castle_condition_text" do
    assert_difference('CastleConditionText.count', -1) do
      delete :destroy, id: @castle_condition_text
    end

    assert_redirected_to castle_condition_texts_path
  end
end
