class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.integer :quantity, default: 1
      t.integer :product_id
      t.integer :order_id
      t.integer :sub_total
      t.timestamps
    end
  end
end
