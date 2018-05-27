require 'test_helper'

class PqrTrackingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pqr_tracking = pqr_trackings(:one)
  end

  test "should get index" do
    get pqr_trackings_url
    assert_response :success
  end

  test "should get new" do
    get new_pqr_tracking_url
    assert_response :success
  end

  test "should create pqr_tracking" do
    assert_difference('PqrTracking.count') do
      post pqr_trackings_url, params: { pqr_tracking: { actual_user_id: @pqr_tracking.actual_user_id, date: @pqr_tracking.date, department_id: @pqr_tracking.department_id, dest_user_id: @pqr_tracking.dest_user_id, pqr_id: @pqr_tracking.pqr_id, response: @pqr_tracking.response, review: @pqr_tracking.review, status_id: @pqr_tracking.status_id } }
    end

    assert_redirected_to pqr_tracking_url(PqrTracking.last)
  end

  test "should show pqr_tracking" do
    get pqr_tracking_url(@pqr_tracking)
    assert_response :success
  end

  test "should get edit" do
    get edit_pqr_tracking_url(@pqr_tracking)
    assert_response :success
  end

  test "should update pqr_tracking" do
    patch pqr_tracking_url(@pqr_tracking), params: { pqr_tracking: { actual_user_id: @pqr_tracking.actual_user_id, date: @pqr_tracking.date, department_id: @pqr_tracking.department_id, dest_user_id: @pqr_tracking.dest_user_id, pqr_id: @pqr_tracking.pqr_id, response: @pqr_tracking.response, review: @pqr_tracking.review, status_id: @pqr_tracking.status_id } }
    assert_redirected_to pqr_tracking_url(@pqr_tracking)
  end

  test "should destroy pqr_tracking" do
    assert_difference('PqrTracking.count', -1) do
      delete pqr_tracking_url(@pqr_tracking)
    end

    assert_redirected_to pqr_trackings_url
  end
end
