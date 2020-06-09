# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :find_user_by_id, only: %i[update destroy]
  before_action :find_user_by_name
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.find_or_create_by(
      username: params[:username]
    )
    redirect_to "http://localhost:3001?user_id=#{@user.id}"
  end

  def update
    @user.update(
      username: params[:username]
    )
    render json: @user
  end

  def destroy
    @user.destroy
    render status: 204
  end

  def find_user_by_id
    @user = User.find(params[:id])
  end

  def find_user_by_name
    @user = User.find_by(first_name: params[:first_name] && last_name: params[:last_name])
  end
end
