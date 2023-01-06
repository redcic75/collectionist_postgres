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
  start_time_seconds: 21_600,
  end_time_seconds: 43_200
)

OpeningRange.create!(
  shop: bakery,
  weekday_int: 3,
  start_time_seconds: 32_400,
  end_time_seconds: 43_200
)

OpeningRange.create!(
  shop: bakery,
  weekday_int: 3,
  start_time_seconds: 52_200,
  end_time_seconds: 64_800
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 1,
  start_time_seconds: 37_800,
  end_time_seconds: 54_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 1,
  start_time_seconds: 61_200,
  end_time_seconds: 72_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 2,
  start_time_seconds: 37_800,
  end_time_seconds: 54_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 2,
  start_time_seconds: 61_200,
  end_time_seconds: 72_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 3,
  start_time_seconds: 37_800,
  end_time_seconds: 54_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 3,
  start_time_seconds: 61_200,
  end_time_seconds: 72_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 4,
  start_time_seconds: 37_800,
  end_time_seconds: 54_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 4,
  start_time_seconds: 61_200,
  end_time_seconds: 72_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 5,
  start_time_seconds: 37_800,
  end_time_seconds: 54_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 5,
  start_time_seconds: 61_200,
  end_time_seconds: 72_000
)

OpeningRange.create!(
  shop: butcher,
  weekday_int: 6,
  start_time_seconds: 37_800,
  end_time_seconds: 72_000
)

puts 'Seed finished'
