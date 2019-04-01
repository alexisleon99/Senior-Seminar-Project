require 'test_helper'

class BudgetApproverPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budget_approver_page = budget_approver_pages(:one)
  end

  test "should get index" do
    get budget_approver_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_budget_approver_page_url
    assert_response :success
  end

  test "should create budget_approver_page" do
    assert_difference('BudgetApproverPage.count') do
      post budget_approver_pages_url, params: { budget_approver_page: {  } }
    end

    assert_redirected_to budget_approver_page_url(BudgetApproverPage.last)
  end

  test "should show budget_approver_page" do
    get budget_approver_page_url(@budget_approver_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_budget_approver_page_url(@budget_approver_page)
    assert_response :success
  end

  test "should update budget_approver_page" do
    patch budget_approver_page_url(@budget_approver_page), params: { budget_approver_page: {  } }
    assert_redirected_to budget_approver_page_url(@budget_approver_page)
  end

  test "should destroy budget_approver_page" do
    assert_difference('BudgetApproverPage.count', -1) do
      delete budget_approver_page_url(@budget_approver_page)
    end

    assert_redirected_to budget_approver_pages_url
  end
end
