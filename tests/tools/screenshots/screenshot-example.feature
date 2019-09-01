Feature: Test screenshot example
As a QA
I want to be able to save a screenshot on demand
So that I will be able to save the status of the page at that time.

  @javascript @tools
  Scenario: To have a screenshot for the drupalcoders's the team page.
    Given I go to "https://drupalcoders.com" website
      And I wait
     When I click "How can You Help"
      And I wait
      And I wait
     Then I should see "Issue, Bug report, Feature request for the theme"
      And I save a screenshot in "drupalcoders_the-team-page.png"
  
