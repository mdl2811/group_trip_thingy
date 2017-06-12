@num = 1
50.times do
  location = Location.create(city: Faker::Address.city,
                            country: Faker::Address.country,
                            state: Faker::Address.state,
                            attraction: Faker::Pokemon.name
  )

  1.times do
    address = Address.create(street_name: Faker::Address.street_name,
    location_id: @num
    )
    @num += 1
    puts "#{address.location_id}"
  end
end


  puts "Get your trips here!"
