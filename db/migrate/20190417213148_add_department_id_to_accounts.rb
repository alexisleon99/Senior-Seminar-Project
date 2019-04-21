class AddDepartmentIdToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :department_id, :integer
  end
end
