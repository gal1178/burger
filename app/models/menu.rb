class Menu < ActiveRecord::Base
	has_and_belongs_to_many :categories
	def act(id)
		Menu.find(id).update_column(:actual, true)
		Menu.select{|x| x.id!=id}.each{|x| x.update_column(:actual, false)}
	end
end
