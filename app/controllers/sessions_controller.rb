class SessionsController < ApplicationController

    def login
     
    end


    def create

      user = User.find_by_email(params[:email])

      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_url, notice: "Logged In!"
      else
        flash.now[:alert] = "Email or password is invalid"
        render "login"
      end

    end


    def destroy
      session[:user_id] = nil
      redirect_to root_url, notice: "Logged out!"
    end

  
end
