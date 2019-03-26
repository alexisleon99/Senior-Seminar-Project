class CreateTravelForms < ActiveRecord::Migration[5.2]
  def change
    create_table :travel_forms do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Department
      t.date :Start_Date
      t.date :End_Date
      t.string :Location
      t.decimal :Flight_Price
      t.decimal :Hotel_Price
      t.decimal :Mileage
      t.decimal :Transportation
      t.decimal :Other

      t.timestamps
    end
  end
end
