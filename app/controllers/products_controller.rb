class ProductsController < ApplicationController

  def index
    @products = Product.where(sub_category_id: params[:id].present? ? params[:id] : SubCategory.first.id)
  end

end
