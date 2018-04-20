class Product < ApplicationRecord
  belongs_to :category

  scope :load_info, -> {
    select("id, name, price, discount, image_link, image_list, view, category_id")
  }

  delegate :name, to: :category, prefix: true
end
