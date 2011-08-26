class RenameConfirmedToIsConfirmedInFriendships < ActiveRecord::Migration
  def self.up
    rename_column :friendships, :confirmed, :is_confirmed
  end

  def self.down
    rename_column :friendships, :is_confirmed, :confirmed
  end
end
