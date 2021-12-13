# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rating = %i[poor fair good excellent outstanding]

def union_holiday?
  rand(6).zero? # union forces everyone to take a day off
end

def make_daily_movies(current, rating)
  movies = []
  rand(1..15).times do |i| 										# 3-15 movies made per day
    time = current + rand(1.day.to_i).seconds # random time of day
    movies << { name: "#{FFaker::Movie.title}",
                rating: rating[rand(5)].to_sym,
                created_at: time,
                updated_at: time }
  end

  puts "Making movies: #{movies.map { |m| m[:name] }.join(', ')}"

  movies
end

start = DateTime.new(2018, 11, 18)
current = start
finish = DateTime.new(2021, 3, 12)

union_strike_1   = (DateTime.new(2019, 3, 14)..DateTime.new(2019, 5, 3))
union_strike_2   = (DateTime.new(2019, 12, 20)..DateTime.new(2020, 2, 14))
union_strike_3   = (DateTime.new(2020, 5, 23)..DateTime.new(2020, 7, 8))

# we make 3-15 movies a day
# except when there are union strikes, or when
# we are forced to take a holiday by the union. 

while current <= finish do
    next if union_holiday?

    movies = make_daily_movies(current, rating)
    Movie.insert_all!(movies)

    current = case current
							when union_strike_1 then union_strike_1.last + 1.day # skip to end of union_strike
							when union_strike_2 then union_strike_2.last + 1.day # skip to end of union_strike
							when union_strike_3 then union_strike_3.last + 1.day # skip to end of union_strike
							else current + 1.day                                 # next day
							end
end

1.upto(100).each do |i|
  AltMovie.create(name: "Alt #{FFaker::Movie.title} - #{i}")
end
