require 'test_helper'

class TravelFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_form = travel_forms(:one)
  end

  test "should get index" do
    get travel_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_form_url
    assert_response :success
  end

  test "should create travel_form" do
    assert_difference('TravelForm.count') do
      post travel_forms_url, params: { travel_form: { Department: @travel_form.Department, End_Date: @travel_form.End_Date, First_Name: @travel_form.First_Name, Flight_Price: @travel_form.Flight_Price, Hotel_Price: @travel_form.Hotel_Price, Last_Name: @travel_form.Last_Name, Location: @travel_form.Location, Mileage: @travel_form.Mileage, Other: @travel_form.Other, Start_Date: @travel_form.Start_Date, Transportation: @travel_form.Transportation } }
    end

    assert_redirected_to travel_form_url(TravelForm.last)
  end

  test "should show travel_form" do
    get travel_form_url(@travel_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_form_url(@travel_form)
    assert_response :success
  end

  test "should update travel_form" do
    patch travel_form_url(@travel_form), params: { travel_form: { Department: @travel_form.Department, End_Date: @travel_form.End_Date, First_Name: @travel_form.First_Name, Flight_Price: @travel_form.Flight_Price, Hotel_Price: @travel_form.Hotel_Price, Last_Name: @travel_form.Last_Name, Location: @travel_form.Location, Mileage: @travel_form.Mileage, Other: @travel_form.Other, Start_Date: @travel_form.Start_Date, Transportation: @travel_form.Transportation } }
    assert_redirected_to travel_form_url(@travel_form)
  end

  test "should destroy travel_form" do
    assert_difference('TravelForm.count', -1) do
      delete travel_form_url(@travel_form)
    end

    assert_redirected_to travel_forms_url
  end
end
