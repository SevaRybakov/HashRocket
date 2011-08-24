Feature: Profile
	As a user
	In order to share my info with my friends
	I want to be able to fill my profile page with some data

	Background:
		Given I am logged in
		And I am on edit profile page
	
	Scenario: Picking a birth date
		When I select "2010" from "profile_date_of_birth_1i"
		And I select "January" from "profile_date_of_birth_2i"
		And I select "1" from "profile_date_of_birth_3i"
		And I press "Update Profile"
		Then I should be on the home page
		And I should see "successfully updated"
		And I should see "1 January 2010"
	
	Scenario: Choosing a gender
		When I choose "Male"
		And I press "Update Profile"
		Then I should be on the home page
		And I should see "successfully updated"
		And I should see "Male"
	
	Scenario: Filling in the city
		When I fill in "City" with "Minsk"
		And I press "Update Profile"
		Then I should be on the home page
		And I should see "successfully updated"
		And I should see "From Minsk"
	