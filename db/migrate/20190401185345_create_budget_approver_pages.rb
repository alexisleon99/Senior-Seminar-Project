class CreateBudgetApproverPages < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_approver_pages do |t|

      t.timestamps
    end
  end
end
