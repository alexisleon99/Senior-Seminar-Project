class AddAcountIdToExpenseReports < ActiveRecord::Migration[5.2]
  def change
    add_column :expense_reports, :account_id, :integer
  end
end
