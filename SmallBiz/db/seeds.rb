# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'

=begin
Country.delete_all
open("Country.txt") do |countries|
	countries.read.each_line do |data|
		code,name = data.chomp.split(",")
		Country.create!(:code =>code, :name=> name)
		end
end
=end
#RecPlace
##

RecPlace.delete_all
open("Sample.txt") do |recplaces|
	recplaces.read.each_line do |data|
		name,age,rating = data.chomp.split(",")
		RecPlace.create!(:name => name, :age => age, :rating =>rating)
	end
end

=begin
RecPlace.create(name: 'ChezAustin', age: 13, rating: 5)
RecPlace.create(name: 'Jabba1', age: 13, rating: 6)
RecPlace.create(name: 'Jabba2', age: 13, rating: 7)
RecPlace.create(name: 'Jabba3', age: 13, rating: 8)
RecPlace.create(name: 'Jabba4', age: 13, rating: 9)

=end