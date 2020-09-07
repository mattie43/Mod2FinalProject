class RestaurantController < ApplicationController
  def show
    # byebug
    @restaurant = YelpModel.specific_search(params[:id])
  end
end