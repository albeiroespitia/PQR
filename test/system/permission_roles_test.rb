require "application_system_test_case"

class PermissionRolesTest < ApplicationSystemTestCase
  setup do
    @permission_role = permission_roles(:one)
  end

  test "visiting the index" do
    visit permission_roles_url
    assert_selector "h1", text: "Permission Roles"
  end

  test "creating a Permission role" do
    visit permission_roles_url
    click_on "New Permission Role"

    fill_in "Permission", with: @permission_role.permission_id
    fill_in "Role", with: @permission_role.role_id
    click_on "Create Permission role"

    assert_text "Permission role was successfully created"
    click_on "Back"
  end

  test "updating a Permission role" do
    visit permission_roles_url
    click_on "Edit", match: :first

    fill_in "Permission", with: @permission_role.permission_id
    fill_in "Role", with: @permission_role.role_id
    click_on "Update Permission role"

    assert_text "Permission role was successfully updated"
    click_on "Back"
  end

  test "destroying a Permission role" do
    visit permission_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Permission role was successfully destroyed"
  end
end
