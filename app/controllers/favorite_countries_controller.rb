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

  def destroy
    # byebug
    @favorite_country = FavoriteCountry.find_by(user_id: params["user_id"], country_id: params["country_id"])
    @favorite_country.destroy
    # byebug

  end



private

def fav_country_params

params.require(:favorite_country).permit(:user_id, :country_id)

end

end
