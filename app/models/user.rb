class User < ActiveRecord::Base
  has_one :profile, :dependent => :destroy
  
  # Friendship associations
  
  # 1) actual friends;
  has_many :friendships,
           :conditions => { :is_confirmed => true }

  has_many :friends, :through => :friendships
  
  # 2) wanted friends 
  # (the people our user has sent friendship request to);
  has_many :wanted_friendships, :class_name => "Friendship",
           :conditions => { :is_confirmed => false }
  
  has_many :wanted_friends, :through => :wanted_friendships, 
           :source => :user
  
  # 3) potential friends
  # (those who have sent friendship request to our user ).
  has_many :friendship_requests, :class_name => "Friendship", 
                                 :foreign_key => "friend_id"
  has_many :potential_friends, :through => :friendship_requests,
                             :source => :user
  
  validates_presence_of :name
  validates_presence_of :surname
  
  after_create :build_profile
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, 
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                                     :name, :surname


end



# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string(255)
#  surname                :string(255)
#

