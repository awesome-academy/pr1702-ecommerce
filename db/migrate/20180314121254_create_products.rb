class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|

      t.string :name
      t.integer :category_id
      t.integer :price
      t.integer :discount
      t.string :image_link
      t.string :image_list
      t.integer :view  	

      t.timestamps
    end
  end
end
