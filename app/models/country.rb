class Country < ApplicationRecord
  has_many :favorite_countries
  has_many :users, through: :favorite_countries
end
