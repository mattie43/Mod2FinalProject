class SessionsController < ApplicationController
    # skip_before_action :authorized, only: [:new, :login]

    def new 
    end 
  
  
    def login 
      
      # find a user by their name
      user = User.find_by(name: params[:session][:name])
  
      # Authenticate a user by their password
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
      else 
        redirect_to new_login_path
      end 
    end

    def logout
        session.delete(:user_id)
    
        redirect_to users_path
    end

end