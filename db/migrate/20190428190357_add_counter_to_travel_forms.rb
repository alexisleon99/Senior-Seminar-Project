class AddCounterToTravelForms < ActiveRecord::Migration[5.2]
  def change
    add_column :travel_forms, :counter, :integer,default: 0
  end
end
