class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:sign_in, :new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @items = Item.where(user: current_user)
  end

  def new
    @user = User.new
  end


  def edit
  end

  def update
  end

  def destroy
    User.find(params[:id]).destroy 
    redirect_to users_path
  end
end
