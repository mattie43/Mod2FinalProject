class MealsController < ApplicationController

  def index
    user = User.find(1)#@current_user.id
    @meals = user.meals
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    params[:meal][:user_id] = 1 # @current_user using sessions controller
    params[:meal][:yelp_id] = session[:current_restaurant] # @current_restaurant using sessions controller
    meal = Meal.create(meal_params)
    redirect_to meal_path(meal)
  end

  def edit
    @meal = Meal.find(params[:id])
  end
  
  def update
    meal = Meal.find(params[:id])
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
