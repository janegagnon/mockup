class UsersController < ApplicationController
  def create
    user = User.new
    user.username= params[:username]
    user.password = params[:password]
    user.save
    session[:user_id] = user.id
  redirect_to root_url, notice: "Welcome to Fridgentory!"
  end

  def show
  @user = User.find_by(:id => params[:user_id])
    if @user.id != session[:user_id]
    redirect_to root_url, notice: "Nice Try!"
    else redirect_to root_url, notice: "Hi, friend!"

    end
  end



end
