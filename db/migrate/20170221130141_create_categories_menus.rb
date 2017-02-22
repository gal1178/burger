class CreateCategoriesMenus < ActiveRecord::Migration
  def change
    create_table :categories_menus, id: false do |t|
    	t.integer :category_id
    	t.integer :menu_id
    end
  end
end
