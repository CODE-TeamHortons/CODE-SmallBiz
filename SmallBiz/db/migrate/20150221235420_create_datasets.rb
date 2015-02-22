class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
	  t.string :Region
	  t.string :Province
	  t.string :City
	  t.integer :FinAmount
	  t.integer :NoPerson
	  t.integer :PctPerson024
	  t.integer :PctPerson2544
	  t.integer :PctPerson4564
	  t.integer :PctPerson65over
	  t.integer :PctOver15K
	  t.integer :PctOver50K
	  t.integer :PctOver100K
	  t.integer :MedianIncome
	  t.integer :Motor
	  t.integer :Furniture
	  t.integer :Electronic
	  t.integer :BuildingGardenMaterial
	  t.integer :FoodDrink
	  t.integer :HealthPersonal
	  t.integer :Gas
	  t.integer :Clothing
	  t.integer :Sports
	  t.integer :General
	  t.integer :Miscellaneous
	  t.integer :Agriculture
	  t.integer :Forestry
	  t.integer :Utilities
	  t.integer :Construction
	  t.integer :Manufacturing
	  t.integer :Trade
	  t.integer :TransporationWarehousing
	  t.integer :FinanceInsuranceRealEstate
	  t.integer :ProfScientifictTechnical
	  t.integer :BusinessBuildingSupportService
	  t.integer :Education
	  t.integer :HealthCare
	  t.integer :InformationCultureRecreation
	  t.integer :Accomodation
	  t.integer :OtherServices
	  t.integer :PublicAdmin
      t.timestamps null: false
    end
  end
end