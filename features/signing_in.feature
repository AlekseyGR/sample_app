Feature: Signing in

Scenario: Unsuccessful signin
Given a user visits the singin page
When they submit invalid signin information
Then they should see an error message

Scenario: Succsessful signin
Given a user visits the signin page
And the user has an acount
When the user submits valid signin information
Then they should see their profile page
And they should see a signout link
