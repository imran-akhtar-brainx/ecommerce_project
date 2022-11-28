class SubCategoriesController < ApplicationController

  def index
    @sub_categories = SubCategory.where(category_id: params[:id].present? ? params[:id] : Category.first.id)
    # @sub_categories = @sub_categories.where(category_id: params[:id]) if params[:id].present?
  end

end
