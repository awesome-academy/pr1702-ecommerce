class ProductsController < ApplicationController
  def index
    @category = Category.all
    @products = Product.filter_by_category params[:category_id]
  end

  def show
    @product = Product.find_by id: params[:id]
    if @product.nil?
      flash[:danger] = t("controller.products.show.not_found")
      redirect_to products_url
    end
    #@category = Category.filter_by_product params[:category_id]
  end
end
