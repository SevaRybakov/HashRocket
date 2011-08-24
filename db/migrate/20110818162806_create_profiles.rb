class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.references :user
      t.date :date_of_birth
      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
