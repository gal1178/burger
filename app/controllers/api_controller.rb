class ApiController < ApplicationController
	before_filter :authenticate_user!
	def index
		@menu=Menu.where(actual: true).first
	end
end
