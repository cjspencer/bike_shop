class BikesController < ApplicationController
  def new
  end

  def create
    render plain: params[:bike].inspect
  end

end
