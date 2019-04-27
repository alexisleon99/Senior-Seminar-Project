class AddStatusToRequestForms < ActiveRecord::Migration[5.2]
  def change
    add_column :request_forms, :status, :string, default: "pending"
  end
end
