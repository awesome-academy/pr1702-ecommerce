class OrderDetailsController < ApplicationController
  def create
    @order = current_order
    @order_detail = @order.order_details.build order_detail_params
    @order.save!
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_detail = @order.order_details.find(params[:id])
    @order_detail.update_attributes(order_detail_params)
    @order_details = @order.order_details
    redirect_to carts_url
  end

  def destroy
    @order = current_order
    @order_detail = @order.order_details.find(params[:id])
    @order_detail.destroy
    @order_details = @order.order_details
    redirect_to carts_url
  end

  private

  def order_detail_params
    params.require(:order_detail).permit(:product_id, :quantity)
  end
end
