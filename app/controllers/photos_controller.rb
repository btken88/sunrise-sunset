# frozen_string_literal: true

class PhotosController < ApplicationController
  before_action :find_photo_by_id, only: %i[show update destroy]
  def index
    @photos = Photo.all
    render json: @photos
  end

  def show
    render json: @photo
  end

  def create
    @photo = Photo.create(
      location: params[:location],
      rise_or_set: params[:rise_or_set],
      url: params[:url]
    )
    render json: @photo
  end

  def update
    @photo.update(
      location: params[:location],
      rise_or_set: params[:rise_or_set],
      url: params[:url]
    )
    render json: @photo
  end

  def destroy
    @photo.destroy
    render status: 204
  end

  def find_photo_by_id
    @photo = Photo.find(params[:id])
  end
end
