class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|

      t.integer :status
      t.integer :user_id
      t.integer :total_price
      t.text :message

      t.timestamps
    end
  end
end
