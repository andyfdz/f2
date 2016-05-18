class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:sign_in, :new, :create]

  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
