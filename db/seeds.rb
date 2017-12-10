# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


i=1
loop do
  user = User.new
  user[:login] = "Maksim#{i}"
  user[:imei] = "000#{i}"
  user[:lat] = rand(59.00001..60.99999)
  user[:lon] = rand(29.00001..30.99999)
  user[:time] = "2007-12-04 00:00:0#{i}"
  user.save

    j=0
    loop do
      geopoint = user.geopoints.build
      geopoint[:lat] = rand(59.00001..60.99999)
      geopoint[:lon] = rand(29.00001..30.99999)
      geopoint[:time] = "2007-12-04 00:00:0#{j}"
      geopoint.save
      j+=1
      break if j == 3
    end

  i+=1
  break if i == 4
end
