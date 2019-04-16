class AddBudgetToDepartments < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :budget, :integer,default: 5000
  end
end
