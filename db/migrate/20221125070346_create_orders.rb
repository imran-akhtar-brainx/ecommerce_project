class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :customer_name
      t.integer :phone_number
      t.timestamps
    end
  end
end
