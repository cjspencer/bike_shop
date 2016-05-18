class BikesController < ApplicationController
  def new
  end

  def create
    # render plain: params[:bike].inspect
    @bike = Bike.new(article_params)

    @bike.save
    redirect_to @bike
  end

  def show
    @bike = Bike.find(params[:id])
  end

private
  def article_params
    params.require(:bike).permit(:title, :text)

end
end
