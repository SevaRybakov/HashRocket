class Friendship < ActiveRecord::Base
  validates_presence_of :user_id
  validates_presence_of :friend_id
  
  before_save :default_values
  
  private #################################################################
  def default_values
    self.confirmed = false if self.confirmed.nil?
  end
  
end

# == Schema Information
#
# Table name: friendships
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  friend_id  :integer
#  confirmed  :boolean
#  created_at :datetime
#  updated_at :datetime
#

