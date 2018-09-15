class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :back_to_login

  def current_user 
    session[:name] ||= nil
  end


  def back_to_login 
    redirect_to controller: "sessions", action: "new"
  end
end
