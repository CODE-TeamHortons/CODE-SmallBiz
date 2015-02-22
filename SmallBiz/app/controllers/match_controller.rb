class MatchController < ApplicationController
  def index
  end

  def search
  end

  def list
  end

  def result
  end
  
  def create
      rankings = Hash.new{|key,values| values}
		i = 1
		#pull info of rank_g ie. rank greater than 6
		# query the RecPlaces table 
		finAid = params[:finanass]
		ageTarget = params[:match][:age]
		
		ageImportance = params[:age]
		
		incomeTarget = params[:match][:income]
		incomeImportance = params[:income]
		
		#TODO: pulling info about retail importance 
		maxFinAmount = Dataset.maximum("finamount")
		ageGroupMaxPct = Dataset.maximum(ageTarget)
		incomeMaxTarget = Dataset.maximum(incomeTarget)
		
		t1 = Dataset.all
			t1.each do |query|
			#some rating based off params
			score = 0
			score += (query.FinAmount / maxFinAmount)* finAid.to_i # some scaling constant? or add some constant?
			#x1 = query.find(:select => ageTarget)
			
			score +=  (query.send(ageTarget.to_sym) / ageGroupMaxPct)*ageImportance.to_i
			#score += (query.incomeTarget / incomeMaxTarget)*incomeImportance
			
			rankings[i] = score
			i = i + 1
			end
		#rankings.sort_by {|key,values| values}
		#@querys = rankings.values.sort.reverse.first(7)
		@matches = rankings.sort_by{|k,v| v}.reverse.first(5)
		
	
		
		
  end
  
end
