class Product < ApplicationRecord
  belongs_to :category
  has_many :comments

  scope :load_info, -> {
    select("id, name, price, discount, image_link, image_list, view, category_id")
  }

  scope :load_info_cart, ->{
    select("id, name, price, discount, image_link")
  }

  delegate :name, to: :category, prefix: true
end
