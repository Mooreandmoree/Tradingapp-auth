class UsersController < ApplicationController  
    def new
        if !logged_in?
        @user = User.new # responsibilty is to render a signup
        else 
            redirect_to root_path
    end
end
def create # for processing the signup form so that when the signup button is pressed it triggers the create action
    user = User.new(user_params)
    if user.save
     session[:user_id] = user.id #for logging a user in you set the user 's id key to the sessions hash, which will be equals to the New user id above.
     redirect_to root_path
    else 
        render :new
  end
end

private
 
def user_params
      params.require(:user).permit(:username, :email, :password)#the field the user is submit i permitted
   end

end


