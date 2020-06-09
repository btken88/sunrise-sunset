# frozen_string_literal: true

class DataController < ApplicationController
  before_action :find_datum_by_id, only: %i[show update destroy]
  def index
    @data = Datum.all
    render json: @data
  end

  def show
    render json: @datum
  end

  def create
    @datum = Datum.create(
      latitude: params[:latitude],
      longitude: params[:longitude],
      date: params[:date],
      sunrise: params[:sunrise],
      sunset: params[:sunset],
      photo_id: params[:photo_id],
      user_id: params[:user_id]
    )
    render json: @datum
  end

  def update
    @datum.update(
      latitude: params[:latitude],
      longitude: params[:longitude],
      date: params[:date],
      sunrise: params[:sunrise],
      sunset: params[:sunset],
      photo_id: params[:photo_id],
      user_id: params[:user_id]
    )
    render json: @datum
  end

  def destroy
    @datum.destroy
    render status: 204
  end

  def find_datum_by_id
    @datum = Datum.find(params[:id])
  end
end
