class WelcomeController < ApplicationController
  def home
  end
  def yelp_search
    flash[:results] = YelpModel.search(params[:term], params[:location])
    # byebug
    # session[:results] = flash[:results]
    redirect_to root_path
  end
end