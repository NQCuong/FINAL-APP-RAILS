class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :download]

  def index
    @photo = Photo.order('created_at DESC')
  end

  def new
    @photo = Photo.new
  end

  def show
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.title.empty? | @photo.description.empty?
      redirect_to new_photo_path
    else @photo.save
        redirect_to profile_index_path
      end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :image, :description)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end
end
