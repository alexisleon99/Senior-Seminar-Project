require 'test_helper'

class PaymentManagerPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_manager_page = payment_manager_pages(:one)
  end

  test "should get index" do
    get payment_manager_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_manager_page_url
    assert_response :success
  end

  test "should create payment_manager_page" do
    assert_difference('PaymentManagerPage.count') do
      post payment_manager_pages_url, params: { payment_manager_page: {  } }
    end

    assert_redirected_to payment_manager_page_url(PaymentManagerPage.last)
  end

  test "should show payment_manager_page" do
    get payment_manager_page_url(@payment_manager_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_manager_page_url(@payment_manager_page)
    assert_response :success
  end

  test "should update payment_manager_page" do
    patch payment_manager_page_url(@payment_manager_page), params: { payment_manager_page: {  } }
    assert_redirected_to payment_manager_page_url(@payment_manager_page)
  end

  test "should destroy payment_manager_page" do
    assert_difference('PaymentManagerPage.count', -1) do
      delete payment_manager_page_url(@payment_manager_page)
    end

    assert_redirected_to payment_manager_pages_url
  end
end
