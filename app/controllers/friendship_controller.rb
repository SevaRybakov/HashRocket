class FriendshipController < ApplicationController
  
  before_filter :authenticate_user!, :get_user
  
  def create
  end
  
end