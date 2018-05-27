require 'test_helper'

class PermissionRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permission_role = permission_roles(:one)
  end

  test "should get index" do
    get permission_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_permission_role_url
    assert_response :success
  end

  test "should create permission_role" do
    assert_difference('PermissionRole.count') do
      post permission_roles_url, params: { permission_role: { permission_id: @permission_role.permission_id, role_id: @permission_role.role_id } }
    end

    assert_redirected_to permission_role_url(PermissionRole.last)
  end

  test "should show permission_role" do
    get permission_role_url(@permission_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_permission_role_url(@permission_role)
    assert_response :success
  end

  test "should update permission_role" do
    patch permission_role_url(@permission_role), params: { permission_role: { permission_id: @permission_role.permission_id, role_id: @permission_role.role_id } }
    assert_redirected_to permission_role_url(@permission_role)
  end

  test "should destroy permission_role" do
    assert_difference('PermissionRole.count', -1) do
      delete permission_role_url(@permission_role)
    end

    assert_redirected_to permission_roles_url
  end
end
