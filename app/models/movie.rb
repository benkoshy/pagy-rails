class Movie < ApplicationRecord
  enum rating: %i[poor fair good excellent outstanding]

  validates_presence_of :rating
  validates_presence_of :name

  searchkick
  include Pagy::Searchkick

end
