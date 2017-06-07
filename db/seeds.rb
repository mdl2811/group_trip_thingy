50.times do
  location = Location.create(city: Faker::Address.city,
                            country: Faker::Address.country,
                            state: Faker::Address.state,
                            attraction: Faker::Pokemon.name
  )
  50.times do
    address = Address.create(latitude: Faker::Address.latitude,
                              longitude: Faker::Address.longitude)

    end
  end

  puts "Get your trips here!"
