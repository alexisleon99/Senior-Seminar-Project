class CreateExpenseReports < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_reports do |t|
      t.string :First_name
      t.string :Last_Name
      t.string :Department
      t.decimal :Flight
      t.decimal :Hotel
      t.decimal :Mileage
      t.decimal :Transportation
      t.decimal :Other
      t.string :image_url

      t.timestamps
    end
  end
end
