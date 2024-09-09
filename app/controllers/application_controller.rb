class ApplicationController < ActionController::Base
include ApplicationHelper
    #helper method :current_user #what this method does is to make the current user accesible inside your views
    #incase you use the helper method above 
    def welcome
        if !logged_in?
            redirect_to login_path
    end
end 
end
