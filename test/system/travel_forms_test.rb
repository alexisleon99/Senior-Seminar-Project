require "application_system_test_case"

class TravelFormsTest < ApplicationSystemTestCase
  setup do
    @travel_form = travel_forms(:one)
  end

  test "visiting the index" do
    visit travel_forms_url
    assert_selector "h1", text: "Travel Forms"
  end

  test "creating a Travel form" do
    visit travel_forms_url
    click_on "New Travel Form"

    fill_in "Department", with: @travel_form.Department
    fill_in "End date", with: @travel_form.End_Date
    fill_in "First name", with: @travel_form.First_Name
    fill_in "Flight price", with: @travel_form.Flight_Price
    fill_in "Hotel price", with: @travel_form.Hotel_Price
    fill_in "Last name", with: @travel_form.Last_Name
    fill_in "Location", with: @travel_form.Location
    fill_in "Mileage", with: @travel_form.Mileage
    fill_in "Other", with: @travel_form.Other
    fill_in "Start date", with: @travel_form.Start_Date
    fill_in "Transportation", with: @travel_form.Transportation
    click_on "Create Travel form"

    assert_text "Travel form was successfully created"
    click_on "Back"
  end

  test "updating a Travel form" do
    visit travel_forms_url
    click_on "Edit", match: :first

    fill_in "Department", with: @travel_form.Department
    fill_in "End date", with: @travel_form.End_Date
    fill_in "First name", with: @travel_form.First_Name
    fill_in "Flight price", with: @travel_form.Flight_Price
    fill_in "Hotel price", with: @travel_form.Hotel_Price
    fill_in "Last name", with: @travel_form.Last_Name
    fill_in "Location", with: @travel_form.Location
    fill_in "Mileage", with: @travel_form.Mileage
    fill_in "Other", with: @travel_form.Other
    fill_in "Start date", with: @travel_form.Start_Date
    fill_in "Transportation", with: @travel_form.Transportation
    click_on "Update Travel form"

    assert_text "Travel form was successfully updated"
    click_on "Back"
  end

  test "destroying a Travel form" do
    visit travel_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Travel form was successfully destroyed"
  end
end
