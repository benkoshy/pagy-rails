class Movie < ApplicationRecord
  enum rating: %i[poor fair good excellent outstanding]

  validates_presence_of :rating
  validates_presence_of :name


  def self.ransackable_attributes(auth_object = nil)
    ["name"]
  end
end
