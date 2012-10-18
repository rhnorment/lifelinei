class UsersController < ApplicationController

  def index
    @users = User.all
    @title = "Administer LifeLine Users"
  end

  def show
    @user = User.find(params[:id])
    @title = "Showing User #{@user.name}"
  end

  def new
    @user = User.new
    @title = "Add New User"
  end

  def create
    @user = User.new(params[:user])
  end

  def edit
    @user = User.find(params[:id])
    @title = "Editing User #{user.name}"
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end
