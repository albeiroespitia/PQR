require "application_system_test_case"

class PqrTrackingsTest < ApplicationSystemTestCase
  setup do
    @pqr_tracking = pqr_trackings(:one)
  end

  test "visiting the index" do
    visit pqr_trackings_url
    assert_selector "h1", text: "Pqr Trackings"
  end

  test "creating a Pqr tracking" do
    visit pqr_trackings_url
    click_on "New Pqr Tracking"

    fill_in "Actual User", with: @pqr_tracking.actual_user_id
    fill_in "Date", with: @pqr_tracking.date
    fill_in "Department", with: @pqr_tracking.department_id
    fill_in "Dest User", with: @pqr_tracking.dest_user_id
    fill_in "Pqr", with: @pqr_tracking.pqr_id
    fill_in "Response", with: @pqr_tracking.response
    fill_in "Review", with: @pqr_tracking.review
    fill_in "Status", with: @pqr_tracking.status_id
    click_on "Create Pqr tracking"

    assert_text "Pqr tracking was successfully created"
    click_on "Back"
  end

  test "updating a Pqr tracking" do
    visit pqr_trackings_url
    click_on "Edit", match: :first

    fill_in "Actual User", with: @pqr_tracking.actual_user_id
    fill_in "Date", with: @pqr_tracking.date
    fill_in "Department", with: @pqr_tracking.department_id
    fill_in "Dest User", with: @pqr_tracking.dest_user_id
    fill_in "Pqr", with: @pqr_tracking.pqr_id
    fill_in "Response", with: @pqr_tracking.response
    fill_in "Review", with: @pqr_tracking.review
    fill_in "Status", with: @pqr_tracking.status_id
    click_on "Update Pqr tracking"

    assert_text "Pqr tracking was successfully updated"
    click_on "Back"
  end

  test "destroying a Pqr tracking" do
    visit pqr_trackings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pqr tracking was successfully destroyed"
  end
end
