class User < ApplicationRecord
  has_many :people_places, class_name: 'CountryUser', foreign_key: 'u_id'
  has_many :countries, through: :people_places, source: :place
end
