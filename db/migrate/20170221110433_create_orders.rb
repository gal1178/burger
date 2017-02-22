class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :operator
      t.integer :restaurant

      t.timestamps null: false
    end
  end
end
