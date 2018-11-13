class User < ApplicationRecord
  has_many: :favorite_countries
  has_many: :countries through: :favorite_countries
end
