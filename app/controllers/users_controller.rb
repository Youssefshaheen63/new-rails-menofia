class UsersController < ApplicationController
   before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users
  def index
    @users = User.all 
  end

  # GET /users/:id
  def show
  end

  # GET /users/new
  def new
     @user = User.new
  end 

  # Post /users/
  def create 
    @user = User.new(name: params[:user][:name], dob: params[:user][:dob],
    email: params[:user][:email], phone: params[:user][:phone],
    address: params[:user][:address])
    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /users/:id/edit
  def edit
  end

  # Patch /users/:id
  def update 
    if @user.update(name: params[:user][:name], dob: params[:user][:dob],
    email: params[:user][:email], phone: params[:user][:phone],
    address: params[:user][:address])
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Delete /users/:id
  def destroy 
    @user.destroy
    redirect_to users_path
  end

  def set_user
    @user = User.find(params[:id])
  end

end
