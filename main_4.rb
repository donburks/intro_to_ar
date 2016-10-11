require_relative 'config'

failure = Country.new name: "Failure", population: "Bob", area: 67897890

if failure.save
  puts "Success!"
else
  puts "WTF"
  puts failure.errors.inspect
end
