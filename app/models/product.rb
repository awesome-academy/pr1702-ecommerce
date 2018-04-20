class Product < ApplicationRecord
  belongs_to :category

  self.per_page = 10

  scope :load_info, -> {
    select("id, name, price, discount, image_link, image_list, view, category_id")
  }

  scope :load_info_cart, ->{
    select("id, name, price, discount, image_link")
  }

  scope :filter_by_name, -> name{
    where "name like ?", "%#{name}%" if name.present?
  }

  delegate :name, to: :category, prefix: true
end
