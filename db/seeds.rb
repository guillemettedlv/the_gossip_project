# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
#Creation City
zip = Faker::Number.decimal_part(digits: 5)

10.times do
City.create!(
    name: Faker::Address.city,
    zip_code: "#{zip}"
    )
end

#Creation User
10.times do
  User.create!(first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name,
  description: Faker::Lorem.sentence(word_count: 10),
  email: Faker::Internet.email,
  age: rand(18..60),
  city_id: rand(1..10)
  )
end

# Creation tag
10.times do
  Tag.create!(title: Faker::Job.field)
end

# Creation Private Message
10.times do
  PrivateMessage.create!(content: Faker::Lorem.sentence, sender_id: User.all.sample.id, recipient_id: User.all.sample.id)
end

#Creation Gossip
20.times do
  Gossip.create!(title: Faker::Movie.title, 
  content: Faker::Lorem.sentence(word_count: 10),
  user_id: rand(1..10)
  )
end