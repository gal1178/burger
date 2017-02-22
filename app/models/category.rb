class Category < ActiveRecord::Base
	has_many :uncategories
	has_many :dishes
	has_and_belongs_to_many :menus
end
