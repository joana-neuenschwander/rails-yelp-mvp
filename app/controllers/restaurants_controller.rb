class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  # Se está a criar um novo restaurante, não faz sentido tentar encontrá-lo.

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new # Needed to instantiate the form_for
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
