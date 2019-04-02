class CreateExpenseReports < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_reports do |t|
      t.string :First_name
      t.string :Last_Name
      t.string :Department
      t.decimal :Flight, precision: 8, scale: 2
      t.decimal :Hotel, precision: 8, scale: 2
      t.decimal :Mileage
      t.decimal :Transportation, precision: 8, scale: 2
      t.decimal :Other, precision: 8, scale: 2
      t.string :image_url

      t.timestamps
    end
  end
end
