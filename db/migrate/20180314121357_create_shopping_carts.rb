class CreateShoppingCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_carts do |t|

	  t.integer :order_id
	  t.integer :product_id
	  t.integer :qty
	  t.integer :amount
	      
      t.timestamps
    end
  end
end
