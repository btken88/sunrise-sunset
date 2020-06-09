# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :find_user_by_id, only: %i[show update destroy]
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name]
    )
    render json: @user
  end

  def update
    @user.update(
      first_name: params[:first_name],
      last_name: params[:last_name]
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
end
