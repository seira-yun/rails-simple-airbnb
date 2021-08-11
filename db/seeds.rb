puts "Cleaning the db..."
Flat.destroy_all

puts "Creating flats..."
50.times do
  Flat.create!(
    name: Faker::Mountain.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraphs(number: 1),
    price_per_night: rand(30..100),
    number_of_guests: rand(1..6)
  )
end
puts "Created #{Flat.count} flats."
