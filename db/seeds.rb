30.times do
  Contact.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  phone: Faker::PhoneNumber.phone_number,
  password: Faker::Team.sport,
)
end

puts "seeded"
