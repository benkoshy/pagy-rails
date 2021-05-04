class Movie < ApplicationRecord
  enum rating: %i[poor fair good excellent outstanding]
end
