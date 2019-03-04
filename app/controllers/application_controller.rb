class ApplicationController < ActionController::Base

    private

    def login_user user
        session[:current_user] = user
    end

    def logged_in
        session[:current_user]
    end

end
