Feature: Create default testing users.

# test_authenticated: { email: 'authenticated.test@drupalcoders.com', password: 'LetMe.in1234' }
# test_editor: { email: 'editor.test@drupalcoders.com', password: 'LetMe.in1234' }
# test_content_admin: { email: 'content.admin.test@drupalcoders.com', password: 'LetMe.in1234' }
# test_site_admin: { email: 'site.admin.test@drupalcoders.com', password: 'LetMe.in1234' }
# test_super_admin: { email: 'super.admin.test@drupalcoders.com', password: 'LetMe.in1234' }

  Background:
    Given I am a logged in user with the "webmaster" user

  @init @tools @local @development @staging @javascript
  Scenario: Create the test_authenticated user.
     When I go to "/admin/people/create"
      And I wait
      And I fill in "authenticated.test@drupalcoders.com" for "Email address"
      And I fill in "test_authenticated" for "Username"
      And I fill in "LetMe.in1234" for "Password"
      And I fill in "LetMe.in1234" for "Confirm password"
      And I press "Create new account"
      And I wait
     Then I should not see "The name test_authenticated is already taken."

  @init @tools @local @development @staging
  Scenario: Create the test_editor user.
     When I go to "/admin/people/create"
      And I wait
      And I fill in "editor.test@drupalcoders.com" for "Email address"
      And I fill in "test_editor" for "Username"
      And I fill in "LetMe.in1234" for "Password"
      And I fill in "LetMe.in1234" for "Confirm password"
      And I check the box "Editor"
      And I press "Create new account"
      And I wait
     Then I should not see "The name test_editor is already taken."

  @init @tools @local @development @staging
  Scenario: Create the test_content_admin user.
     When I go to "/admin/people/create"
      And I wait
      And I fill in "content.admin.test@drupalcoders.com" for "Email address"
      And I fill in "test_content_admin" for "Username"
      And I fill in "LetMe.in1234" for "Password"
      And I fill in "LetMe.in1234" for "Confirm password"
      And I check the box "Content Admin"
      And I press "Create new account"
      And I wait
     Then I should not see "The name test_content_admin is already taken."

  @init @tools @local @development @staging
  Scenario: Create the test_site_admin user.
     When I go to "/admin/people/create"
      And I wait
      And I fill in "site.admin.test@drupalcoders.com" for "Email address"
      And I fill in "test_site_admin" for "Username"
      And I fill in "LetMe.in1234" for "Password"
      And I fill in "LetMe.in1234" for "Confirm password"
      And I check the box "Site Admin"
      And I press "Create new account"
      And I wait
     Then I should not see "The name test_site_admin is already taken."

  @init @tools @local @development @staging
  Scenario: Create the test_super_admin user.
     When I go to "/admin/people/create"
      And I wait
      And I fill in "super.admin.test@drupalcoders.com" for "Email address"
      And I fill in "test_super_admin" for "Username"
      And I fill in "LetMe.in1234" for "Password"
      And I fill in "LetMe.in1234" for "Confirm password"
      And I check the box "Super Admin"
      And I press "Create new account"
      And I wait
     Then I should not see "The name test_super_admin is already taken."
