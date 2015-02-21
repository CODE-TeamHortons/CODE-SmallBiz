class QuerysController < ApplicationController
	
	
	def index
		@querys = RecPlace.all
	end
	
	
	def new
	
	end

	def create
		rankings = Hash.new{|key,values| values}
		i = 1
		#pull info of rank_g ie. rank greater than 6
		# query the RecPlaces table 
		ord = params[:rank]
		if ord == 'rank_g'
			ord = 6
		elsif
			ord = 2
		end
		
		#present a view 
		t1 = RecPlace.all
			t1.each do |query|
			#some rating based off params
			score = query.rating
			rankings[i] = score
			i = i + 1
			end
		#rankings.sort_by {|key,values| values}
		#@querys = rankings.values.sort.reverse.first(7)
		@querys = rankings.sort_by{|k,v| v}.reverse.first(7)
	end
end
