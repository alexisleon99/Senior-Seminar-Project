require "application_system_test_case"

class EmployeePagesTest < ApplicationSystemTestCase
  setup do
    @employee_page = employee_pages(:one)
  end

  test "visiting the index" do
    visit employee_pages_url
    assert_selector "h1", text: "Employee Pages"
  end

  test "creating a Employee page" do
    visit employee_pages_url
    click_on "New Employee Page"

    click_on "Create Employee page"

    assert_text "Employee page was successfully created"
    click_on "Back"
  end

  test "updating a Employee page" do
    visit employee_pages_url
    click_on "Edit", match: :first

    click_on "Update Employee page"

    assert_text "Employee page was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee page" do
    visit employee_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee page was successfully destroyed"
  end
end
