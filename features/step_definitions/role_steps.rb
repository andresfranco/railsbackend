Given(/^I have roles named (.+)$/) do |names|
  names.split(', ').each do |name|
    Role.create!(:name => name)
  end  
end
