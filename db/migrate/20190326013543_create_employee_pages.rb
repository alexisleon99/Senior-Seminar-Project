class CreateEmployeePages < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_pages do |t|
    	

      t.timestamps
    end
  end
end
