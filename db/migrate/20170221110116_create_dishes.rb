class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :cost
      t.integer :category_id
      t.integer :uncategory_id

      t.timestamps null: false
    end
  end
end
