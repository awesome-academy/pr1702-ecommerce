class ProductsController < ApplicationController
  def index
    @category = Category.load_info
    @products = Product.load_info.paginate page: params[:page], per_page: 20
  end

  def show
    @product = Product.find_by id: params[:id]
    if @product.nil?
      flash[:danger] = t("controller.products.show.not_found")
      redirect_to products_url
    end
  end
end
