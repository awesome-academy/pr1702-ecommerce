class Product < ApplicationRecord
  belongs_to :category

  scope :filter_by_category, -> category_id{
    where category_id: category_id if category_id.present?
  }

  delegate :name, to: :category, prefix: true
end
