class AddDepartmentsToRequestForms < ActiveRecord::Migration[5.2]
  def change
    add_reference :request_forms, :departments, foreign_key: true
  end
end
