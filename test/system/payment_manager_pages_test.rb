require "application_system_test_case"

class PaymentManagerPagesTest < ApplicationSystemTestCase
  setup do
    @payment_manager_page = payment_manager_pages(:one)
  end

  test "visiting the index" do
    visit payment_manager_pages_url
    assert_selector "h1", text: "Payment Manager Pages"
  end

  test "creating a Payment manager page" do
    visit payment_manager_pages_url
    click_on "New Payment Manager Page"

    click_on "Create Payment manager page"

    assert_text "Payment manager page was successfully created"
    click_on "Back"
  end

  test "updating a Payment manager page" do
    visit payment_manager_pages_url
    click_on "Edit", match: :first

    click_on "Update Payment manager page"

    assert_text "Payment manager page was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment manager page" do
    visit payment_manager_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment manager page was successfully destroyed"
  end
end
