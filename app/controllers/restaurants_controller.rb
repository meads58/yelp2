class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to restaurants_path
      else
        redirect_to new_restaurant_path, flash: {alert: "Restaurant did not save, input it again"}
      end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :rating)
  end

end
