require "application_system_test_case"

class BudgetApproverPagesTest < ApplicationSystemTestCase
  setup do
    @budget_approver_page = budget_approver_pages(:one)
  end

  test "visiting the index" do
    visit budget_approver_pages_url
    assert_selector "h1", text: "Budget Approver Pages"
  end

  test "creating a Budget approver page" do
    visit budget_approver_pages_url
    click_on "New Budget Approver Page"

    click_on "Create Budget approver page"

    assert_text "Budget approver page was successfully created"
    click_on "Back"
  end

  test "updating a Budget approver page" do
    visit budget_approver_pages_url
    click_on "Edit", match: :first

    click_on "Update Budget approver page"

    assert_text "Budget approver page was successfully updated"
    click_on "Back"
  end

  test "destroying a Budget approver page" do
    visit budget_approver_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Budget approver page was successfully destroyed"
  end
end
