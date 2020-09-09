class RestaurantController < ApplicationController
  def search_results
    flash[:results] = YelpModel.search(params[:term], params[:location])
    redirect_to root_path
  end

  def show
    # byebug
    @restaurant = YelpModel.specific_search(params[:id])
    session[:current_restaurant] = @restaurant.business.id
    @img_rating = YelpModel.img_rating(@restaurant.business.rating)
    @my_data = Meal.where(yelp_id: session[:current_restaurant])
    @yelp_reviews = YelpModel.reviews(params[:id])
    # byebug

    first = @restaurant.business.location.display_address[0].tr(' ','+')
    second = @restaurant.business.location.display_address[1].tr(' ','+')
    # @map_embed = GoogleMaps.map_display(first,second)
  end
end