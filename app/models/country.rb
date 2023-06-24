class Country < ApplicationRecord
  has_many :people_places, class_name: 'CountryUser', foreign_key: 'c_id'
  has_many :people, through: :people_places
end
