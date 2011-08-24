class ProfileController < ApplicationController
  respond_to :html
  
  before_filter :authenticate_user!, :get_user
  before_filter :check_access, :only => [:edit, :update]
  
  
  def show
  end
  
  def edit
  end
  
  def update
    if @profile.update_attributes(params[:profile])
      redirect_to root_path, :notice => 'Your profile has been successfully updated'
    end
  end
  
  private 
  
  def get_user
    @user = current_user
    @profile = @user.profile
  end
  
  def check_access
    redirect_to root_path unless current_user == @user
  end
end
