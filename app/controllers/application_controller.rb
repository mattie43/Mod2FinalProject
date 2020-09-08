class ApplicationController < ActionController::Base
     before_action :logged_in_user

    def logged_in_user
        @current_user = User.find_by(id: session[:user_id])
      end 
    
    
    # def authorized
    #     redirect_to new_login_path unless logged_in_user
    # end 

end
