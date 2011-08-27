class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => "User"
  
  validates_presence_of :user_id
  validates_presence_of :friend_id
  validates_uniqueness_of :user_id, :scope => [ :friend_id ]
  
  before_save :create_inverse_friendship_on_approval
  
  def confirm
    self.is_confirmed = true
    
    Friendship.create :user_id => self.friend_id, :friend_id => self.user_id,
                      :is_confirmed => true
  end
  
  
  private #################################################################
  
  def create_inverse_friendship_on_approval
    if is_confirmed
      
    end
  end
  
  def delete_inverse_friendship
    #TODO: write me
  end
  
end



# == Schema Information
#
# Table name: friendships
#
#  id           :integer         not null, primary key
#  user_id      :integer
#  friend_id    :integer
#  is_confirmed :boolean         default(FALSE)
#  created_at   :datetime
#  updated_at   :datetime
#

