# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rating = %i[poor fair good excellent outstanding]

1.upto(5000).each do |i|
  Movie.create(created_at: i.months.ago, name: "#{FFaker::Movie.title} - #{i}", rating: rating[rand(5)].to_sym)
end
