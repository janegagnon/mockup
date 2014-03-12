class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(:username => params[:user_name])
    if user.present?
      if user.password == params[:password]
      session[:user_id] = user.id
      # THIS CREATES A COOKIE! You can reference it other places
      redirect_to root_url, notice: "Welcome!"
      else
      redirect_to root_url, notice:"Wrong Password, Dummy."
      end
      else
      redirect_to root_url, notice:"Unknown User"
      end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "TTYS!!!"
  end


end
