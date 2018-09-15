class SessionsController < ApplicationController

  def new 
    render 'login'
  end

  def create
    if params[:name].nil? || params[:name]==""
      back_to_login
    else
      session[:name] = params[:name]
      redirect_to controller: "secrets", action: "show"
    end
  end

  def destroy
    if logged_in?
      session.delete :name
    end
    back_to_login 
  end

  private 
  def logged_in?
    !current_user.nil? && current_user != ""
  end
  
end
