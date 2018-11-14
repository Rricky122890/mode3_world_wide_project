class FavoriteCountry < ApplicationRecord
  belongs_to :user
  belongs_to :country
  validates :country_id, uniqueness:true


end
