class SessionsController < ApplicationController

  def new 
  end 

  def login 
    
  #   # find a user by their name
  #   snail = Snail.find_by(name: params[:session][:name])

  #   # Authenticate a user by their password
  #   if snail && snail.authenticate(params[:session][:password])
  #     session[:snail_id] = snail.id
  #     redirect_to snail_path(snail)
  #   else 
  #     flash[:error] = "Username or Password Incorrect"
  #     redirect_to new_login_path
  #   end 
  end 

  def logout
    session.delete(:yelp_id)
    session.delete(:user_id)

    redirect_to root_path
  end 

end