class Category < ApplicationRecord
  has_many :products

  scope :load_info, -> {
    select :id, :name
  }
end
