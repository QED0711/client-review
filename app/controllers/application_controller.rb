class ApplicationController < ActionController::Base

    helper_method :logged_in, :current_user

    private

    def login_user user
        session[:current_user] = user
    end

    def logout_user
        session.clear
    end

    def logged_in
        session[:current_user]
    end

    def current_user
        session[:current_user] || nil
    end

end
