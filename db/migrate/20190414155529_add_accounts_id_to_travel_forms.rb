class AddAccountsIdToTravelForms < ActiveRecord::Migration[5.2]
  def change
    add_column :travel_forms, :account_id, :integer
  end
end
