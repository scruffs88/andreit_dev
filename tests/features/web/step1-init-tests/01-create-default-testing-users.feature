Feature: Create default testing users.

# test_authenticated: { email: 'drupal-example-1@drupalcoders.org', password: 'LetMe.in1234' }
# test_super_admin: { email: 'drupal-example-2@drupalcoders.org', password: 'LetMe.in1234' }

  Background:
    Given I am a logged in user with the "webmaster" user

  @init @tools @local @development @staging
  Scenario: Create the test_authenticated user.
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "drupal-example-1@drupalcoders.org" for "Email address"
      And I fill in "test_authenticated" for "Username"
      And I fill in "LetMe.in1234" for "Password"
      And I fill in "LetMe.in1234" for "Confirm password"
      And I press "Create new account"
      And I wait
     Then I should not see "The name test_authenticated is already taken."

  @init @tools @local @development @staging
  Scenario: Create the test_super_admin user.
     When I go to "/admin/people/create"
      And I wait
     Then I should see "Add user"
     When I fill in "drupal-example-2@drupalcoders.org" for "Email address"
      And I fill in "test_super_admin" for "Username"
      And I fill in "LetMe.in1234" for "Password"
      And I fill in "LetMe.in1234" for "Confirm password"
      And I check the box "Administrator"
      And I press "Create new account"
      And I wait
     Then I should not see "The name test_super_admin is already taken."
