class AddCountToTravelForms < ActiveRecord::Migration[5.2]
  def change
    add_column :travel_forms, :count, :Integer,default: 0
  end
end
