class CreatePaymentManagerPages < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_manager_pages do |t|

      t.timestamps
    end
  end
end
