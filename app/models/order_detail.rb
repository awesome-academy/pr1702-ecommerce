class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  before_save :set_unit_price
  before_save :set_sub_price

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def sub_price
    unit_price * quantity
  end

  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_sub_price
    self[:sub_price] = quantity * set_unit_price
  end
end
