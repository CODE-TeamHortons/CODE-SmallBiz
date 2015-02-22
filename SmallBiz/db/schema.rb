# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150221235420) do

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datasets", force: :cascade do |t|
    t.string   "Region"
    t.string   "Province"
    t.string   "City"
    t.integer  "FinAmount"
    t.integer  "NoPerson"
    t.integer  "PctPerson024"
    t.integer  "PctPerson2544"
    t.integer  "PctPerson4564"
    t.integer  "PctPerson65Over"
    t.integer  "PctOver15K"
    t.integer  "PctOver50K"
    t.integer  "PctOver100K"
    t.integer  "MedianIncome"
    t.integer  "Motor"
    t.integer  "Furniture"
    t.integer  "Electronic"
    t.integer  "BuildingGardenMaterial"
    t.integer  "FoodDrink"
    t.integer  "HealthPersonal"
    t.integer  "Gas"
    t.integer  "Clothing"
    t.integer  "Sports"
    t.integer  "General"
    t.integer  "Miscellaneous"
    t.integer  "Agriculture"
    t.integer  "Forestry"
    t.integer  "Utilities"
    t.integer  "Construction"
    t.integer  "Manufacturing"
    t.integer  "Trade"
    t.integer  "TransporationWarehousing"
    t.integer  "FinanceInsuranceRealEstate"
    t.integer  "ProfScientificTechnical"
    t.integer  "BusinessBuildingSupportService"
    t.integer  "Education"
    t.integer  "HealthCare"
    t.integer  "InformationCultureRecreation"
    t.integer  "Accomodation"
    t.integer  "OtherServices"
    t.integer  "PublicAdmin"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "rec_places", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
