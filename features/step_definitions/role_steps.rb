Given(/^I have roles named (.+)$/) do |names|
  names.split(',').each do |name|
    Role.create!(:name => name) unless Role.find_by_name(name).id
  end
end

When(/^I go to the list of roles$/) do
  visit roles_path
end



Then(/^I should see "([^"]*)"$/) do |arg1|
 expect(page).to have_content(arg1)
end
