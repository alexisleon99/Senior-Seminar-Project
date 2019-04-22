class AddTravelFormIdToRequestForms < ActiveRecord::Migration[5.2]
  def change
    add_column :request_forms, :travel_form_id, :integer
  end
end
