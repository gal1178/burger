class Dish < ActiveRecord::Base
	belongs_to :category
	belongs_to :uncategory
	has_many :positions
end
