class AddTravelFormsRefToRequestForms < ActiveRecord::Migration[5.2]
  def change
    add_reference :request_forms, :travel_forms, foreign_key: true
  end
end

