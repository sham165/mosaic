Feature: Trying to do something ajaxy

  Scenario: Our test using the roughian site
    Given I am on the Roughian home page
    When the HTMLView is visible
    Then I can enter "I made it" into the text field

