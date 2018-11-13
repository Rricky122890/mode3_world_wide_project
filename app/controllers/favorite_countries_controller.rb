class FavoriteCountriesController < ApplicationController

  def index
    # byebug
    render json: FavoriteCountry.all
  end


  def create

    # byebug
    @favorite_country = FavoriteCountry.create(fav_country_params)

    # if @favorite_country.valid?
    #   render json: @favorite_country
    # else
    #   render json: {"error" => @favorite_country.errors.full_messages}, status: 422
    # end
  end



private

def fav_country_params

params.require(:favorite_country).permit(:user_id, :country_id)

end

end
