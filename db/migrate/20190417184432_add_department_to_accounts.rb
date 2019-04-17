class AddDepartmentToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :department, :string
  end
end
