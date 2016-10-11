require_relative 'config'

canada = Country.first

puts canada.cities.inspect

vancouver = City.first
puts vancouver.country.inspect

puts City.order("name").inspect

puts Country.limit(3).inspect

puts Country.where('population > 10000000').sum(:population)
# SELECT SUM(population) FROM countries WHERE population > 10000000;


