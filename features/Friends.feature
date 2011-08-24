Feature: friends
In order to be mo social and follow other users updates
I want to be able to add friends

	Scenario: adding a friend
		Given I have user "John Doe"
		And I have user "Vasya Pupkin"
		
		When I'm in John's browser
		And I'm logged in as "John Doe"
		And I go to "Vasya Pupkin" profile page
		And I follow "Add friend" link
		Then I should see "You are going to add John Doe as a friend. Are you sure?"
		When I click "Yes, please"
		Then I should see "John Doe will be notified about your friendship request."
				
		When I'm in Vasya's browser
		And I'm logged in as "Vasya Pupkin"
		Then I should see new friend notification
		When I follow new friend notification
		And I click "Confirm"
		Then I should see "You and John Doe are now friends"
		
		When I'm in John's browser
	  Then I should see "You and Vasya Pupkin are now friends"
		
	
	
	
