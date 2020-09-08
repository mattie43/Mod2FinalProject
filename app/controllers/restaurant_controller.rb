class RestaurantController < ApplicationController
  def search
  end

  def search_results
    flash[:results] = YelpModel.search(params[:term], params[:location])
    redirect_to restaurant_search_path
  end

  def show
    # byebug
    @restaurant = YelpModel.specific_search(params[:id])
    session[:current_restaurant] = @restaurant.business.id
    @img_rating = YelpModel.img_rating(@restaurant.business.rating)
    @my_data = Meal.where(yelp_id: session[:current_restaurant])
  end
end