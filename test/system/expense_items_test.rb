require "application_system_test_case"

class ExpenseItemsTest < ApplicationSystemTestCase
  setup do
    @expense_item = expense_items(:one)
  end

  test "visiting the index" do
    visit expense_items_url
    assert_selector "h1", text: "Expense Items"
  end

  test "creating a Expense item" do
    visit expense_items_url
    click_on "New Expense Item"

    fill_in "Name", with: @expense_item.name
    click_on "Create Expense item"

    assert_text "Expense item was successfully created"
    click_on "Back"
  end

  test "updating a Expense item" do
    visit expense_items_url
    click_on "Edit", match: :first

    fill_in "Name", with: @expense_item.name
    click_on "Update Expense item"

    assert_text "Expense item was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense item" do
    visit expense_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense item was successfully destroyed"
  end
end
