class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|

      t.integer :level

      t.timestamps
    end
  end
end
