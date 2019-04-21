class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.references :travel_form, foreign_key: true

      t.timestamps
    end
  end
end
