class AddEstimate2ToExpenseReports < ActiveRecord::Migration[5.2]
  def change
    add_column :expense_reports, :estimate2, :integer,default: 0
  end
end
