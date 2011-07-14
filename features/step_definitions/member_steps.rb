Given /^"([^"]*)" is a member$/ do |name|
  member = Member.create!(:email => "#{name}@email.com", :password => 'guest', :confirm_password => 'guest')
end

Then /^"([^"]*)" is no longer a member$/ do |member|
  Member.where(:email => "#{member}@email.com").first.destroy
end
