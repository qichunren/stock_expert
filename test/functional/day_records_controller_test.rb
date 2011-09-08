require 'test_helper'

class DayRecordsControllerTest < ActionController::TestCase
  setup do
    @day_record = day_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:day_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day_record" do
    assert_difference('DayRecord.count') do
      post :create, :day_record => @day_record.attributes
    end

    assert_redirected_to day_record_path(assigns(:day_record))
  end

  test "should show day_record" do
    get :show, :id => @day_record.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @day_record.to_param
    assert_response :success
  end

  test "should update day_record" do
    put :update, :id => @day_record.to_param, :day_record => @day_record.attributes
    assert_redirected_to day_record_path(assigns(:day_record))
  end

  test "should destroy day_record" do
    assert_difference('DayRecord.count', -1) do
      delete :destroy, :id => @day_record.to_param
    end

    assert_redirected_to day_records_path
  end
end
