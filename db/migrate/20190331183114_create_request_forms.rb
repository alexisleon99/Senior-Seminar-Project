class CreateRequestForms < ActiveRecord::Migration[5.2]
  def change
    create_table :request_forms do |t|
      t.string :Department
      t.decimal :amount

      t.timestamps
    end
  end
end
