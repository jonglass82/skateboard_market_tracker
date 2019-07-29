class UsersController < ApplicationController
  

  def new

  end

def create
    user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save

      redirect_to "/login", alert: "Your account has been create! Please log in"

    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end


end
