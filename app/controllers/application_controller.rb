class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected ###############################################################
  
  def get_user
    @user = current_user
    @profile = @user.profile
  end
end
