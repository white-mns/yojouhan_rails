require 'test_helper'

class MultipleBuyingsControllerTest < ActionController::TestCase
  setup do
    @multiple_buying = multiple_buyings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multiple_buyings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multiple_buying" do
    assert_difference('MultipleBuying.count') do
      post :create, multiple_buying: { battle_no: @multiple_buying.battle_no, e_no: @multiple_buying.e_no, generate_no: @multiple_buying.generate_no, multiple_buying: @multiple_buying.multiple_buying, result_no: @multiple_buying.result_no }
    end

    assert_redirected_to multiple_buying_path(assigns(:multiple_buying))
  end

  test "should show multiple_buying" do
    get :show, id: @multiple_buying
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multiple_buying
    assert_response :success
  end

  test "should update multiple_buying" do
    patch :update, id: @multiple_buying, multiple_buying: { battle_no: @multiple_buying.battle_no, e_no: @multiple_buying.e_no, generate_no: @multiple_buying.generate_no, multiple_buying: @multiple_buying.multiple_buying, result_no: @multiple_buying.result_no }
    assert_redirected_to multiple_buying_path(assigns(:multiple_buying))
  end

  test "should destroy multiple_buying" do
    assert_difference('MultipleBuying.count', -1) do
      delete :destroy, id: @multiple_buying
    end

    assert_redirected_to multiple_buyings_path
  end
end
