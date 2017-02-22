class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :dish_id
      t.integer :quantity
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
