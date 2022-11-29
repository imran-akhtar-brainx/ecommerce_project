class SubCategoriesController < ApplicationController

  def index
    @sub_categories = SubCategory.where(category_id: params[:id].present? ? params[:id] : Category.first.id)
  end

end
