class ProfileController < ApplicationController
  respond_to :html
  
  before_filter :authenticate_user!, :get_user
  
  
  def show
    if params[:id]
      @user = User.find params[:id]
    end
      
  end
  
  def edit
  end
  
  def update
    if @profile.update_attributes(params[:profile])
      redirect_to root_path, :notice => 'Your profile has been successfully updated'
    end
  end
  
end
