class Order < ActiveRecord::Base
	has_many :positions
	def statistic
	  dishes=Dish.all
	  positions=[]
	  quantity=0
	  hash=[]
	  for i in 0...dishes.size
	    positions[0] = dishes[i].name
	    positions[1] = dishes[i].category.name
	    Position.where(dish: dishes[i]).each{|pos| quantity+=pos.quantity}
	    positions[2] = quantity
	    positions[3] = quantity*dishes[i].cost
	    hash[i]=Hash["dish name", positions[0], "category name", positions[1], "quantity",positions[2], "earnings", positions[3]]
	  end
	  return hash
	end
end
