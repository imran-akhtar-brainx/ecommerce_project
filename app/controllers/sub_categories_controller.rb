class SubCategoriesController < ApplicationController

  def index
    @sub_categories = SubCategory.all
    @sub_categories = @sub_categories.where(category_id: params[:id]) if params[:id].present?
  end

  def show
    @sub_category = SubCategory.find(params[:id])
  end
end
