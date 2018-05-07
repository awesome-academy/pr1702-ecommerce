class CartsController < ApplicationController
  def show
    @products = Product.load_info_cart
    @order_details = current_order.order_details
  end
end
