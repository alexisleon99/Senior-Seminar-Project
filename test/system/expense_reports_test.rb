require "application_system_test_case"

class ExpenseReportsTest < ApplicationSystemTestCase
  setup do
    @expense_report = expense_reports(:one)
  end

  test "visiting the index" do
    visit expense_reports_url
    assert_selector "h1", text: "Expense Reports"
  end

  test "creating a Expense report" do
    visit expense_reports_url
    click_on "New Expense Report"

    fill_in "Department", with: @expense_report.Department
    fill_in "First name", with: @expense_report.First_name
    fill_in "Flight", with: @expense_report.Flight
    fill_in "Hotel", with: @expense_report.Hotel
    fill_in "Last name", with: @expense_report.Last_Name
    fill_in "Mileage", with: @expense_report.Mileage
    fill_in "Other", with: @expense_report.Other
    fill_in "Transportation", with: @expense_report.Transportation
    fill_in "Image url", with: @expense_report.image_url
    click_on "Create Expense report"

    assert_text "Expense report was successfully created"
    click_on "Back"
  end

  test "updating a Expense report" do
    visit expense_reports_url
    click_on "Edit", match: :first

    fill_in "Department", with: @expense_report.Department
    fill_in "First name", with: @expense_report.First_name
    fill_in "Flight", with: @expense_report.Flight
    fill_in "Hotel", with: @expense_report.Hotel
    fill_in "Last name", with: @expense_report.Last_Name
    fill_in "Mileage", with: @expense_report.Mileage
    fill_in "Other", with: @expense_report.Other
    fill_in "Transportation", with: @expense_report.Transportation
    fill_in "Image url", with: @expense_report.image_url
    click_on "Update Expense report"

    assert_text "Expense report was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense report" do
    visit expense_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense report was successfully destroyed"
  end
end
