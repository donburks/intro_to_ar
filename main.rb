require_relative 'config'

countries = Country.all

countries.each do |c|
  puts c.name
end

puts "There are #{Country.count} countries in the database."

# .find - ID
# .find_by - Key-value, key is a column name in the database, value is the data. 
# ONLY return a single record

canada = Country.find(6)

canaduh = Country.find_by(name: "Canada")

puts "Canada: #{canada.name} | #{canada.population}"
puts "Canaduh: #{canaduh.name} | #{canaduh.population}"

# .where - Always returns a set (of type ActiveRecord::Relation which behaves as an Enumerable)

canada_third = Country.where(name: "Canada")
puts canada.inspect
puts canada_third.first.inspect

small_countries = Country.where("population < 1000000000")
puts small_countries.inspect

