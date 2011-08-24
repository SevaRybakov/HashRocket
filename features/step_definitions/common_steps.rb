Given /^I have user "(\w+) (\w+)"$/ do |name, surname|
  Factory.create :user, 
                 :name => name, 
                 :surname => surname,
                 :email => "#{name}.#{surname}@gmail.com" 
end

When /^I'm in (\w+)'s browser$/ do 
  Capybara.session_name = name
end

