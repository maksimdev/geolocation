# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new
user[:login] = "Maksim1"
user[:imei] = "0001"
user[:lat] = "30.1"
user[:lon] = "50.1"
user[:time] = "2007-12-04 00:00:01"
user.save
j=0
loop do
  geopoint = user.geopoints.build
  geopoint[:lat] = rand(59.00001..60.99999)
  geopoint[:lon] = rand(29.00001..30.99999)
  geopoint.save
  j+=1
break if j == 3
end


user = User.new
user[:login] = "Maksim2"
user[:imei] = "0002"
user[:lat] = "30.2"
user[:lon] = "50.2"
user[:time] = "2007-12-04 00:00:02"
user.save
j=0
loop do
  geopoint = user.geopoints.build
  geopoint[:lat] = rand(59.00001..60.99999)
  geopoint[:lon] = rand(29.00001..30.99999)
  geopoint.save
  j+=1
break if j == 3
end

user = User.new
user[:login] = "Maksim3"
user[:imei] = "0003"
user[:lat] = "30.3"
user[:lon] = "50.3"
user[:time] = "2007-12-04 00:00:03"
user.save
j=0
loop do
  geopoint = user.geopoints.build
  geopoint[:lat] = rand(59.00001..60.99999)
  geopoint[:lon] = rand(29.00001..30.99999)
  geopoint.save
  j+=1
break if j == 3
end
