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
    # @products = @category.products.paginate(page: params[:page])
    @comments = @product.comments.order(created_at: :desc)
    @comment = Comment.new
    # redirect_to root_url and return unless @products
  end
end
