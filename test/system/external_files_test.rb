require "application_system_test_case"

class ExternalFilesTest < ApplicationSystemTestCase
  setup do
    @external_file = external_files(:one)
  end

  test "visiting the index" do
    visit external_files_url
    assert_selector "h1", text: "External Files"
  end

  test "creating a External file" do
    visit external_files_url
    click_on "New External File"

    fill_in "Url", with: @external_file.url
    click_on "Create External file"

    assert_text "External file was successfully created"
    click_on "Back"
  end

  test "updating a External file" do
    visit external_files_url
    click_on "Edit", match: :first

    fill_in "Url", with: @external_file.url
    click_on "Update External file"

    assert_text "External file was successfully updated"
    click_on "Back"
  end

  test "destroying a External file" do
    visit external_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "External file was successfully destroyed"
  end
end
