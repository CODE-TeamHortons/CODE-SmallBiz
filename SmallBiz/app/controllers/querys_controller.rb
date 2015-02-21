class QuerysController < ApplicationController

	def new
	
	end

	def create
		render plain: params[:query].inspect
		#pull info of rank_g ie. rank greater than 6
		# query the RecPlaces table 
		
		#present a view 
		
		
	end
end
