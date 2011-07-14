Feature: Manage Pages

Scenario: Guest Visits Home Page

Given I go to the home page
Then I should see "Sign up"
And I should see "log in"

Scenario: Member Visits Home Page

When "Bob" logs in
Then I should not see "Sign up"
And I should not see "log in"
Then "Bob" logs out