class CountryUser < ApplicationRecord
  belongs_to :people, class_name: 'User', foreign_key: 'u_id'
  belongs_to :place, class_name: 'Country', foreign_key: 'c_id'
end
