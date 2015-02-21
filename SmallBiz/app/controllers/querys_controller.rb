class QuerysController < ApplicationController

	def new
	
	end

	def create
		render plain: params[:query].inspect
	end
end
