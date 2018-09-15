class SecretsController < ApplicationController
  before_action :require_login
  
  def show
  end

  private 
  def require_login
    back_to_login unless (!current_user.nil? && current_user != "")
  end
end
