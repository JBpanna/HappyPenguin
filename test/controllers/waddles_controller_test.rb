require 'test_helper'

class WaddlesControllerTest < ActionController::TestCase
  setup do
    @waddle = waddles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waddles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waddle" do
    assert_difference('Waddle.count') do
      post :create, waddle: { birthday: @waddle.birthday, dance_type: @waddle.dance_type, height: @waddle.height, name: @waddle.name }
    end

    assert_redirected_to waddle_path(assigns(:waddle))
  end

  test "should show waddle" do
    get :show, id: @waddle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waddle
    assert_response :success
  end

  test "should update waddle" do
    patch :update, id: @waddle, waddle: { birthday: @waddle.birthday, dance_type: @waddle.dance_type, height: @waddle.height, name: @waddle.name }
    assert_redirected_to waddle_path(assigns(:waddle))
  end

  test "should destroy waddle" do
    assert_difference('Waddle.count', -1) do
      delete :destroy, id: @waddle
    end

    assert_redirected_to waddles_path
  end
end
