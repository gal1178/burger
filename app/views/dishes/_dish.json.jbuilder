json.extract! dish, :id, :name, :cost, :category_id, :uncategory_id, :created_at, :updated_at
json.url dish_url(dish, format: :json)