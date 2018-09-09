class SessionsController < ApplicationController

  def create
    if params[:name] != nil && params[:name].strip != ""
      session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.delete(:name)
    redirect_to "/login"
  end

  def new
  end

end
