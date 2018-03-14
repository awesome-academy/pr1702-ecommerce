class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :user_name
      t.string :user_email
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
