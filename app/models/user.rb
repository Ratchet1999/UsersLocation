class User < ApplicationRecord
  has_many :people_places, class_name: 'CountryUser', foreign_key: 'u_id'
  has_many :countries, through: :people_places, source: :place

  # validates :name, presence: true
  before_create :abc # object will be saved if there is no before/after_validation

  # after_validation :add_errors # object will not save

  # before_save :add_errors

  def add_errors
    p 'hello1'
    errors.add(:base, 'ERROR')
  end

  def abc
    p 'hello'
  end
end
