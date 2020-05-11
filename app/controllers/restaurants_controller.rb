class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render :index 
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to 
      restaurant_path(@restaurant)
    else
      render 'new'
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
end
