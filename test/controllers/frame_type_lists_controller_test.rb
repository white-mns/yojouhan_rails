require 'test_helper'

class FrameTypeListsControllerTest < ActionController::TestCase
  setup do
    @frame_type_list = frame_type_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frame_type_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frame_type_list" do
    assert_difference('FrameTypeList.count') do
      post :create, frame_type_list: { frame_type_id: @frame_type_list.frame_type_id, name: @frame_type_list.name }
    end

    assert_redirected_to frame_type_list_path(assigns(:frame_type_list))
  end

  test "should show frame_type_list" do
    get :show, id: @frame_type_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frame_type_list
    assert_response :success
  end

  test "should update frame_type_list" do
    patch :update, id: @frame_type_list, frame_type_list: { frame_type_id: @frame_type_list.frame_type_id, name: @frame_type_list.name }
    assert_redirected_to frame_type_list_path(assigns(:frame_type_list))
  end

  test "should destroy frame_type_list" do
    assert_difference('FrameTypeList.count', -1) do
      delete :destroy, id: @frame_type_list
    end

    assert_redirected_to frame_type_lists_path
  end
end
