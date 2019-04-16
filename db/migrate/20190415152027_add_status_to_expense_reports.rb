class AddStatusToExpenseReports < ActiveRecord::Migration[5.2]
  def change
    add_column :expense_reports, :status, :string ,default: "pending"
  end
end
