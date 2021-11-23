# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rating = %i[poor fair good excellent outstanding]

start  = DateTime.new(2018, 11, 18)
finish = DateTime.new(2021, 3, 12)
gap1   = [DateTime.new(2019, 3, 14),  DateTime.new(2019, 5, 3)]
gap2   = [DateTime.new(2019, 12, 20), DateTime.new(2020, 2, 14)]
gap3   = [DateTime.new(2020, 5, 23),  DateTime.new(2020, 7, 8)]

current = start
while current <= finish  do
  next if rand(6).zero?                             # 1/6 additional random empty days
  attributes = []
  rand(1..15).times do                              # records per day
    time = current + rand(1.day.to_i).seconds       # random time of day
    attributes << { name: "#{FFaker::Movie.title}",
                    rating: rating[rand(5)].to_sym,
                    created_at: time,
                    updated_at: time }
  end
  current = case current
            when gap1.first then gap1.last          # skip to end of gap
            when gap2.first then gap2.last          # skip to end of gap
            when gap3.first then gap3.last          # skip to end of gap
            else current + 1.day                    # next day
            end
  Movie.insert_all(attributes)
  print '.'
end
puts
