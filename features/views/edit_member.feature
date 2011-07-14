Feature: Edit Member Details

As a Member
I want to edit my profile

Scenario: Bob should be able to edit his profile
Given "Bob" logs in
And I go to edit Bob's profile page
And I fill in "First name" with "Bob"
And I fill in "Last name" with "Barker"
When I press "Update Member" 
Then I should see "Successfully updated member."
And "Bob" logs out

Scenario: Bob should not be able to edit Bill's profile
Given "Bill" is a member
And "Bob" logs in
And I go to edit Bill's profile page
Then I should see "You are not allowed to access this page."
And "Bob" logs out
And "Bill" is no longer a member
