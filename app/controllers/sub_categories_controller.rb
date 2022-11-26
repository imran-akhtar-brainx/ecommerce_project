class SubCategoriesController < ApplicationController

  def index
    @sub_categories = SubCategory.all
    category_id = params[:id].present? ? params[:id] : Category.first.id
    @sub_categories = @sub_categories.where(category_id: category_id)
  end

  def show
    @sub_category = SubCategory.find(params[:id])
  end
end
