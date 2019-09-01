Feature: Content Editing - Rich Text Editor - Input formats
As a logged in user with a permission to edit content
I want to be able to switch between input formats
So that can use different type of rich text editors.

  @javascript @local @development @staging @production
  Scenario: Check if Site Admin user can change the text format for the body of Basic page.
    When I go to "/user"
    And I wait for "5" seconds
    Then I should see "Username"

  @javascript @local @development @staging @production
  Scenario: Check if Site Admin user can change the text format for the body of Basic page.
    Given I am a logged in user with the "webmaster" user
     When I go to "/node/add/page"
      And I wait
     Then I should not see "Access denied"

  @javascript @local @development @staging @production
  Scenario: Check if Super Admin user can change the text format for the body of Basic page.
    Given I am a logged in user with the "webmaster" user
     When I go to "/node/add/page"
      And I wait
     Then I should see "Create Basic page"
      And I should see "Body"
