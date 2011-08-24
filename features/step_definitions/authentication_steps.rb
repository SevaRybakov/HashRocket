Given /^I have a user with email address "([^"]*)"$/ do |email|
  Factory.create( :user, :email => email )
end

Given /^I am logged in$/ do
  u = Factory.create :user
  visit new_user_session_path
  fill_in('user_email', :with => u.email)
  fill_in('user_password', :with => u.password)
  click_button('user_submit')
end
