class Uncategory < ActiveRecord::Base
	belongs_to :category
	has_many :dishes
end
