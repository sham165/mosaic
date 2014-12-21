Feature: Accessing tables

  Scenario: All states that have greater than 10M population
    Given I am on the State Population page
    Then I should see that these states have gt 10000000 population
      | states       |
      | California   |
      | Texas        |
      | New York     |
      | Florida      |
      | Illinois     |
      | Pennsylvania |
      | Ohio         |