class AddDefaultValueToConfirmedFieldInFriendships < ActiveRecord::Migration
  def self.up
    change_column :friendships, :confirmed, :boolean, :default => false
  end

  def self.down
    remove_column :friendships, :confirmed
    add_column :friendships, :confirmed, :boolean
  end
end
