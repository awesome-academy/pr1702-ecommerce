class CategoriesController < ApplicationController
  before_action :load_category, :load_categories, only: :show

  def index; end

  def show
    @products = @category.products
      .paginate page: params[:page], per_page: Settings.categories.per_page
  end

  private

  def load_category
    @category = Category.find_by id: params[:id]
    return if @category
    flash[:danger] = "Category not found"
    redirect_to root_url
  end

  def load_categories
    @categories = Category.load_info
  end
end
