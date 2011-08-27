class FriendshipController < ApplicationController
  
  before_filter :authenticate_user!, :get_user
  
  def send_request
    if Friendship.create :user => current_user, :friend => @user

    end
  end
  
end


# 6348313