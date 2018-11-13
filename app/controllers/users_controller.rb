class UsersController < ApplicationController
  validates :first_name, presence:true
  validates :last_name, presence:true

  def index

    render json: User.all
  end


def create
  @user = User.create(user_params)

  if @user.valid?
     render json: @user
   else
     render json: {"error" => @user.errors.full_messages}, status: 422
   end
end


  private

  def user_params
    params.require(:users).permit(:first_name, :last_name)
  end
end
