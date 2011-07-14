When /^"([^"]*)" logs in$/ do |name|
  member = Member.create!(:email => "#{name}@email.com", :password => 'guest', :confirm_password => 'guest')
  visit '/log_in'
  fill_in 'email', :with => "#{name}@email.com"
  fill_in 'password', :with => 'guest'
  click_button 'Log in'
end

Then /^"([^"]*)" logs out$/ do |member|
  visit '/log_out'
  Member.where(:email => "#{member}@email.com").first.destroy
end