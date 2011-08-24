Feature: Authentication

	Scenario: Log in user
		Given I have a user with email address "testuser@test.com"
		When I go to sign in page
		And I fill in "user_email" with "testuser@test.com"
		And I fill in "user_password" with "password"
		And I press "Sign in"
		Then I should see "John Doe (It's you)"
  
	Scenario: Log off user
		Given I am logged in
		When I go to the home page
		And I follow "logout-link"
		Then I should see "Sign in"
		
	Scenario: Register
		When I go to sign up page
		And I fill in "user_name" with "test"
		And I fill in "user_surname" with "user"
		And I fill in "user_email" with "a@b.com"
		And I fill in "user_password" with "123456"
		And I fill in "user_password_confirmation" with "123456"
		And I press "Sign up"
		Then I should see "test user (It's you)"