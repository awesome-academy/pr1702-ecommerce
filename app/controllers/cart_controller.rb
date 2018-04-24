class CartController < ApplicationController
  def show
    @products = Product.load_info_cart
  end
end
