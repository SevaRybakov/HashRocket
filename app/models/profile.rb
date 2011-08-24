class Profile < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :date_of_birth, :city, :gender
end


# == Schema Information
#
# Table name: profiles
#
#  id            :integer(4)      not null, primary key
#  user_id       :integer(4)
#  date_of_birth :date
#  created_at    :datetime
#  updated_at    :datetime
#  city          :string(255)
#  gender        :boolean(1)
#

