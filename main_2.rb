require_relative 'config'

# lighthousia = Country.create name: "Lighthousia", capital: "Vancouver", population: 800, area: 13000

lighthousia = Country.last

puts lighthousia.inspect

# .new = New Ruby object, no record in db
# .create = .new + .save

dummy = Country.create name: "Dummy", capital: "Nowhere", population: 0, area: 543543254

puts "The area of the Dummy country is: #{dummy.area}"

dummy.destroy

results = Country.find_by name: "Dummy"

puts results

# .save - Saves changes to object to database

lighthousia.capital = "Saskatoon"

lighthousia.save
