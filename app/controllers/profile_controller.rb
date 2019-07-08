class ProfileController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]

  def index
    @photo = Photo.all
  end

  def new
  end
end
