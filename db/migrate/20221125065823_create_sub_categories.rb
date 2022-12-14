class CreateSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_categories do |t|
      t.belongs_to :category, foreign_key: true
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
