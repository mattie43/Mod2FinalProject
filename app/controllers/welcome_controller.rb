class WelcomeController < ApplicationController
  def home
    @meal = Meal.all.sample
  end
end