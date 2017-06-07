@num = 1
50.times do
  location = Location.create(city: Faker::Address.city,
                            country: Faker::Address.country,
                            state: Faker::Address.state,
                            attraction: Faker::Pokemon.name
  )
  end

  50.times do
    address = Address.create(latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    location_id: @num
    )
    @num += 1
    puts "#{address.location_id}"
  end
  
  puts "Get your trips here!"
