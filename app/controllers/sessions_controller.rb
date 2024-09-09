class SessionsController < ApplicationController
   def new #render the login form
if logged_in?
  redirect_to root_path
end
   def create # processing the login form
    binding.pry 
    user = User.find_by(username: params[:username])
if user && user.authenticate(params[:password]) #this line means if the  user exists and if the user is authenticated
  session[:user_id] = user.id
  redirect_to root_path
 else
  render :new
  end
end
          def destroy # logout
            session.delete :user_id #This means to delete the sessions user id 
            redirect_to login_path
        end 

        def OmniAuth
        binding.pry
        end
        
      end

    end
    