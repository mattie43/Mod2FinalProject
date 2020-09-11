class MealsController < ApplicationController

  def index
    user = User.find(session[:user_id]) # @current_user.id
    @meals = user.meals
  end

  def show
    @meal = Meal.find(params[:id])
    @restaurant_name = YelpModel.specific_search(session[:current_restaurant]).business.name
  end

  def new
    @meal = Meal.new
    @restaurant_name = YelpModel.specific_search(session[:current_restaurant]).business.name
  end

  def create
    params[:meal][:user_id] = session[:user_id] # @current_user using sessions controller
    params[:meal][:yelp_id] = session[:current_restaurant] # @current_restaurant using sessions controller
    params[:meal][:rating] = params[:rating].to_i
    # byebug
    meal = Meal.create(meal_params)
    redirect_to meal_path(meal)
  end

  def edit
    @meal = Meal.find(params[:id])
    @restaurant_name = YelpModel.specific_search(session[:current_restaurant]).business.name
  end
  
  def update
    meal = Meal.find(params[:id])
    params[:meal][:rating] = params[:rating].to_i
    meal.update(meal_params)
    redirect_to meal_path(meal)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :rating, :comments, :user_id, :picture_url, :yelp_id)
  end

end
