require 'test_helper'

class ExternalFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @external_file = external_files(:one)
  end

  test "should get index" do
    get external_files_url
    assert_response :success
  end

  test "should get new" do
    get new_external_file_url
    assert_response :success
  end

  test "should create external_file" do
    assert_difference('ExternalFile.count') do
      post external_files_url, params: { external_file: { url: @external_file.url } }
    end

    assert_redirected_to external_file_url(ExternalFile.last)
  end

  test "should show external_file" do
    get external_file_url(@external_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_external_file_url(@external_file)
    assert_response :success
  end

  test "should update external_file" do
    patch external_file_url(@external_file), params: { external_file: { url: @external_file.url } }
    assert_redirected_to external_file_url(@external_file)
  end

  test "should destroy external_file" do
    assert_difference('ExternalFile.count', -1) do
      delete external_file_url(@external_file)
    end

    assert_redirected_to external_files_url
  end
end
