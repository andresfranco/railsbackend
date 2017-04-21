Given(/^I am not logged in$/) do
  current_driver = Capybara.current_driver
 begin
   Capybara.current_driver = :rack_test
   page.driver.submit :delete, "/users/sign_out", {}
 ensure
   Capybara.current_driver = current_driver
 end
end

When(/^I go to login$/) do
 visit '/users/sign_in'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2
end


When(/^I press "([^"]*)"$/) do |arg1|
  click_button arg1
end
