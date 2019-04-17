class AddStatusToTravelForms < ActiveRecord::Migration[5.2]
  def change
    add_column :travel_forms, :status, :string ,default: "pending"
  end
end
