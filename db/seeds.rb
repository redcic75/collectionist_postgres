# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleansing database...'
Shop.destroy_all

puts 'Creating shops...'
bakery = Shop.create!(name: 'My little bread')
butcher = Shop.create!(name: 'Super beef')

puts 'Creating opening ranges...'
OpeningRange.create!(
  shop: bakery,
  weekday_int: 2,
  start_time: Time.find_zone('UTC').parse('9:00'),
  end_time: Time.find_zone('UTC').parse('12:00')
)

OpeningRange.create!(
  shop: bakery,
  weekday_int: 3,
  start_time: Time.find_zone('UTC').parse('14:30'),
  end_time: Time.find_zone('UTC').parse('18:00')
)

OpeningRange.create!(
  shop: bakery,
  weekday_int: 3,
  start_time: Time.find_zone('UTC').parse('9:00'),
  end_time: Time.find_zone('UTC').parse('12:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 1,
  start_time: Time.find_zone('UTC').parse('10:30'),
  end_time: Time.find_zone('UTC').parse('15:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 1,
  start_time: Time.find_zone('UTC').parse('17:00'),
  end_time: Time.find_zone('UTC').parse('20:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 2,
  start_time: Time.find_zone('UTC').parse('17:00'),
  end_time: Time.find_zone('UTC').parse('20:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 2,
  start_time: Time.find_zone('UTC').parse('10:30'),
  end_time: Time.find_zone('UTC').parse('15:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 3,
  start_time: Time.find_zone('UTC').parse('10:30'),
  end_time: Time.find_zone('UTC').parse('15:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 3,
  start_time: Time.find_zone('UTC').parse('17:00'),
  end_time: Time.find_zone('UTC').parse('20:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 4,
  start_time: Time.find_zone('UTC').parse('10:30'),
  end_time: Time.find_zone('UTC').parse('15:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 4,
  start_time: Time.find_zone('UTC').parse('17:00'),
  end_time: Time.find_zone('UTC').parse('20:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 5,
  start_time: Time.find_zone('UTC').parse('10:30'),
  end_time: Time.find_zone('UTC').parse('15:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 5,
  start_time: Time.find_zone('UTC').parse('17:00'),
  end_time: Time.find_zone('UTC').parse('20:00')
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 6,
  start_time: Time.find_zone('UTC').parse('10:30'),
  end_time: Time.find_zone('UTC').parse('20:00')
)

puts 'Seed finished'
