class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|

      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.integer :sub_price
      t.integer :unit_price

      t.timestamps
    end
  end
end
