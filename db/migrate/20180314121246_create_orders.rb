class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|

      t.integer :status
      t.integer :user_id
      t.string :user_name
      t.string :user_email
      t.integer :user_phone
      t.integer :amount
      t.string :payment
      t.string :payment_info
      t.text :message

      t.timestamps
    end
  end
end
