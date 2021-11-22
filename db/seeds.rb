# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rating = %i[poor fair good excellent outstanding]


1.upto(240).each do |i|
  1.upto(3).each do
    offset_from_beginning_of_month = rand(2582000) # number of seconds in 30 days
    Movie.create(created_at: i.months.ago + offset_from_beginning_of_month.seconds, name: "#{FFaker::Movie.title} - #{i}", rating: rating[rand(5)].to_sym)
  end
end
