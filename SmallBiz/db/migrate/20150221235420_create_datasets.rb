class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
	  t.string :region
	  t.string :province
	  t.string :city
	  t.integer :finamount
	  t.integer :noperson
	  t.integer :pctperson024
	  t.integer :pctperson2544
	  t.integer :pctperson4564
	  t.integer :pctperson65over
	  t.integer :pctover15k
	  t.integer :pctover50k
	  t.integer :pctover100k
	  t.integer :medianincome
	  t.integer :motor
	  t.integer :furniture
	  t.integer :electronic
	  t.integer :buildinggardenmaterial
	  t.integer :fooddrink
	  t.integer :healthpersonal
	  t.integer :gas
	  t.integer :clothing
	  t.integer :sports
	  t.integer :general
	  t.integer :miscellaneous
	  t.integer :agriculture
	  t.integer :forestry
	  t.integer :utilities
	  t.integer :construction
	  t.integer :manufacturing
	  t.integer :trade
	  t.integer :transporationwarehousing
	  t.integer :financeinsurancerealestate
	  t.integer :profscientifictechnical
	  t.integer :businessbuildingsupportservice
	  t.integer :education
	  t.integer :healthcare
	  t.integer :informationculturerecreation
	  t.integer :accomodation
	  t.integer :otherservices
	  t.integer :publicadmin
      t.timestamps null: false
    end
  end
end