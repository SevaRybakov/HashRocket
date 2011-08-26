class Friendship < ActiveRecord::Base
  validates_presence_of :user_id
  validates_presence_of :friend_id
  
  
end


# == Schema Information
#
# Table name: friendships
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  friend_id  :integer
#  confirmed  :boolean         default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

