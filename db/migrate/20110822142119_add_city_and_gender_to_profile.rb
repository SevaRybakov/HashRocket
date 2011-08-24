class AddCityAndGenderToProfile < ActiveRecord::Migration
  def self.up
    add_column :profiles, :city, :string
    add_column :profiles, :gender, :bool
  end

  def self.down
    remove_column :profiles, :gender
    remove_column :profiles, :city
  end
end
