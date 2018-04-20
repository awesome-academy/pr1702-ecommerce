class ProductsController < ApplicationController
  def index
    @categories = Category.load_info
    @products = Product.load_info.filter_by_name(params[:search])
      .paginate page: params[:page], per_page: Settings.products.per_page
  end

  def show
    @product = Product.find_by id: params[:id]
    if @product.nil?
      flash[:danger] = t("controller.products.show.not_found")
      redirect_to products_url
    end
    @products = @category.products.paginate(page: params[:page])
  end
end
