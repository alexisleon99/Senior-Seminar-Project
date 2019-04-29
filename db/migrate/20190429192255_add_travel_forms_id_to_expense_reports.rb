class AddTravelFormsIdToExpenseReports < ActiveRecord::Migration[5.2]
  def change
    add_column :expense_reports, :travel_forms_id, :integer
  end
end
