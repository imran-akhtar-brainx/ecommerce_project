class Product < ApplicationRecord
  has_many :sub_categories
  has_many :categories, through: :sub_categories
  has_and_belongs_to_many :orders
  has_many_attached :images
end
