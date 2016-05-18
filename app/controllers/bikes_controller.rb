class BikesController < ApplicationController
  def new
  end

  def create
    # render plain: params[:bike].inspect
    @bike = Bike.new(article_params)

    @bike.save
    redirect_to @bike
  end

private
  def article_params
    params.require(:article).permit(:title, :text)

end
