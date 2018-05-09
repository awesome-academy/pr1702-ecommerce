class Order < ApplicationRecord
  has_many :order_details
  before_save :set_subtotal_price

  def subtotalprice
    order_details.collect {|order_detail| order_detail.valid? ? (order_detail.unit_price*order_detail.quantity) : 0}.sum
  end

  private

  def set_subtotal_price
    self.sub_total_price = subtotalprice
  end
end
