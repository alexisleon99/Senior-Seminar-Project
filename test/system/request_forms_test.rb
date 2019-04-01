require "application_system_test_case"

class RequestFormsTest < ApplicationSystemTestCase
  setup do
    @request_form = request_forms(:one)
  end

  test "visiting the index" do
    visit request_forms_url
    assert_selector "h1", text: "Request Forms"
  end

  test "creating a Request form" do
    visit request_forms_url
    click_on "New Request Form"

    fill_in "Department", with: @request_form.Department
    fill_in "Amount", with: @request_form.amount
    click_on "Create Request form"

    assert_text "Request form was successfully created"
    click_on "Back"
  end

  test "updating a Request form" do
    visit request_forms_url
    click_on "Edit", match: :first

    fill_in "Department", with: @request_form.Department
    fill_in "Amount", with: @request_form.amount
    click_on "Update Request form"

    assert_text "Request form was successfully updated"
    click_on "Back"
  end

  test "destroying a Request form" do
    visit request_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request form was successfully destroyed"
  end
end
