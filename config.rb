require 'active_record'
require_relative 'country'
require_relative 'city'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'w3d2'
})


