require 'spec_helper'

describe Friendship do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :friend_id }
  
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

