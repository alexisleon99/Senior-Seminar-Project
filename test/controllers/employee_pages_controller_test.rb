require 'test_helper'

class EmployeePagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_page = employee_pages(:one)
  end

  test "should get index" do
    get employee_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_page_url
    assert_response :success
  end

  test "should create employee_page" do
    assert_difference('EmployeePage.count') do
      post employee_pages_url, params: { employee_page: {  } }
    end

    assert_redirected_to employee_page_url(EmployeePage.last)
  end

  test "should show employee_page" do
    get employee_page_url(@employee_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_page_url(@employee_page)
    assert_response :success
  end

  test "should update employee_page" do
    patch employee_page_url(@employee_page), params: { employee_page: {  } }
    assert_redirected_to employee_page_url(@employee_page)
  end

  test "should destroy employee_page" do
    assert_difference('EmployeePage.count', -1) do
      delete employee_page_url(@employee_page)
    end

    assert_redirected_to employee_pages_url
  end
end
