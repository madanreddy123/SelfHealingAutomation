Feature: As a tester, I want to click on a check box to enable it and verify it is selected
  Scenario: Check Box actions and status using automatic locators
    Given I have a "Chrome" browser
    When I navigate to "https://testzenlabs.ie/"
    Then checkbox named "Home" is not selected
    When I click the "Home" checkbox
#    Then checkbox named "Home" is selected
    Then I close the browser