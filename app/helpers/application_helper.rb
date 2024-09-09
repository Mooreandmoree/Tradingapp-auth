module ApplicationHelper
    def current_user #memoization
        @current_user ||= User.find_by(id: session[:user_id]) 
        #what this line does is that its lookimg to see whether the current user variable has a value, if it does we do not touch the data base,
        # if it equals nothing we set it to the user object that we find
    end

    def logged_in?
        current_user
    end
end
