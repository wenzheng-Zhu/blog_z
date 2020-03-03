class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception

	helper_method :current_user, :logged_in?      #这一行定义以后，这两个方法就可以在views中调用

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def logged_in?
		!!current_user
	end

	def require_user
		if !logged_in?
			flash[:danger] = "You must be logged in to perform that action"
			redirect_to root_path
		end
	end
end
