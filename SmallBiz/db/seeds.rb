# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'
Dataset.delete_all
open("DataStat.txt") do |datasets|
	datasets.read.each_line do |data|
		region,province,city,finamount,noperson,pctperson024,pctperson2544,pctperson4564,pctperson65over,pctover15k,pctover50k,pctover100k,medianincome,motor,furniture,electronic,buildinggardenmaterial,fooddrink,healthpersonal,gas,clothing,sports,general,miscellaneous,agriculture,forestry,utilities,construction,manufacturing,trade,transporationwarehousing,financeinsurancerealestate,profscientifictechnical,businessbuildingsupportservice,education,healthcare,informationculturerecreation,accomodation,otherservices,publicadmin = data.chomp.split(",")
		Dataset.create!(:Region => region, :Province => province, :City =>city, :FinAmount =>finamount, :NoPerson => noperson, :PctPerson024 => pctperson024, :PctPerson2544 => pctperson2544, :PctPerson4564 => pctperson4564, :PctPerson65Over => pctperson65over, :PctOver15K => pctover15k, :PctOver50K => pctover50k, :PctOver100K => pctover100k, :MedianIncome => medianincome, :Motor => motor, :Furniture => furniture, :Electronic => electronic, :BuildingGardenMaterial => buildinggardenmaterial, :FoodDrink => fooddrink, :HealthPersonal => healthpersonal, :Gas => gas, :Clothing => clothing, :Sports => sports, :General => general, :Miscellaneous => miscellaneous, :Agriculture => agriculture, :Forestry => forestry, :Utilities => utilities, :Construction => construction, :Manufacturing=>manufacturing, :Trade=>trade, :TransporationWarehousing => transporationwarehousing, :FinanceInsuranceRealEstate => financeinsurancerealestate, :ProfScientificTechnical => profscientifictechnical, :BusinessBuildingSupportService => businessbuildingsupportservice, :Education => education, :HealthCare => healthcare, :InformationCultureRecreation=>informationculturerecreation, :Accomodation=>accomodation, :OtherServices=>otherservices, :PublicAdmin=>publicadmin )
	end
end
