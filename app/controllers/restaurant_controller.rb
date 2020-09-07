class RestaurantController < ApplicationController
  def show
    # byebug
    @restaurant = YelpModel.specific_search(params[:id])
    @img_rating = Restaurant.img_rating(@restaurant.business.rating)
  end
end