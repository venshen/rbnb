# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'

puts "Destroying old entries"
Booking.destroy_all
Item.destroy_all
User.destroy_all


puts "seeding users"
# The default password is: tester123
10.times do |index|
User.create!(
  email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  location: ["Jingan, China", "Minhang, China", "Pudong, China", "Hongkou, China"].sample,
  profile_img: Faker::Avatar.image(size: "50x50"),
  password: "tester123"
)
end

puts "seeding items"
100.times do |index|
  Item.create!(
    picture_url: "https://source.unsplash.com/100x100",
    price: rand(5..100),
    deposit: rand(80..300),
    category: ["house appliances", "electronics", "clothes", "sports"].sample,
    name: "testitem",
    user_id: User.all.sample.id
  )
end



puts "seeding bookings"
Booking.create!(
  booking_start: Date.today,
  booking_end: Date.today.next_day(rand(10)),
  item_id: Item.all.sample.id,
  user_id: User.all.sample.id
)


# TODO: add review samples
# puts "seeding reviews"
