class FeedController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]

  def index
  end

  def new
  end
end
