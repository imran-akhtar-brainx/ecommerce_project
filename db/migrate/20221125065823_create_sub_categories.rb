class CreateSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_categories do |t|
      t.belongs_to :categories
      t.belongs_to :products
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
