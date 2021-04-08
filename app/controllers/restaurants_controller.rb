class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def top
    @restaurants = Restaurant.where(stars:5)
  end
  def chef_name
    @restaurant = Restaurant.find(params[:id])
    @chef = @restaurant.chef_name
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars, :chef_name)
  end
end
