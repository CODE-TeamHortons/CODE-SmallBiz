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
		
		regionPref = params[:region]
		incomeTarget = params[:match][:income]
		incomeImportance = params[:income]
		
		#TODO: pulling info about retail importance 
		maxFinAmount = Dataset.maximum("finamount")
		ageGroupMaxPct = Dataset.maximum(ageTarget)
		incomeMaxTarget = Dataset.maximum(incomeTarget)
		
		retailType = params[:match][:retailtype]
		indusType = params[:match][:indus]
		
			t1 = Dataset.all
			t1.each do |query|
				if(((regionPref == "Eastern Canada") && (query.Region == "Atlantic" || query.Region == "Quebec" || query.Region == "Ontario")) || (regionPref =="It doesn't matter") || ((regionPref == "Western Canada") &&  (query.Region == "Praries" || query.Region == "British Columbia")))
					#some rating based off params
					score = 0
					score += (query.FinAmount / maxFinAmount)* finAid.to_i # some scaling constant? or add some constant?
					#x1 = query.find(:select => ageTarget)
					
					score +=  (query.send(ageTarget.to_sym) / ageGroupMaxPct)*ageImportance.to_i
					score += (query.send(incomeTarget.to_sym) / incomeMaxTarget)*incomeImportance.to_i
					if(retailType != "na")
						retMax = Dataset.maximum(retailType)
						score += (query.send(retailType.to_sym) / retMax)*params[:retailType].to_i
					end
					
					if(indusType != "na")
						indMax = Dataset.maximum(indusType)
						score += (query.send(indusType.to_sym) / indMax)*params[:indus].to_i
					end
					rankings[i] = score
					
				end
				i = i + 1
			end
		#rankings.sort_by {|key,values| values}
		#@querys = rankings.values.sort.reverse.first(7)
		@matches = rankings.sort_by{|k,v| v}.reverse.first(5)
		
	
		
		
  end
  
end
