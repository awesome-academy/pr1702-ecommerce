class Product < ApplicationRecord
  scope :filter_by_category, -> category_id{
    where category_id: category_id if category_id.present?
  }
end
