class QuerysController < ApplicationController
	
	
	def index
		@querys = RecPlace.all
	end
	
	
	def new
	
	end

	def create
		
		#pull info of rank_g ie. rank greater than 6
		# query the RecPlaces table 
		ranking = params[:rank]
		
		#present a view 
		place = RecPlace.all
		
	end
end
