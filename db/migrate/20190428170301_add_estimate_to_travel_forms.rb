class AddEstimateToTravelForms < ActiveRecord::Migration[5.2]
  def change
    add_column :travel_forms, :estimate, :Integer,default: 0
  end
end
