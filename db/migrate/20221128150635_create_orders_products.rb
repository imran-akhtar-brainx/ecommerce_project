class CreateOrdersProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :orders_products do |t|
      t.belongs_to :order
      t.belongs_to :product

      t.timestamps
    end
  end
end
