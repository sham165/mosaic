Feature: Adopting Puppies

  Background:
    Given I am shopping for puppies

  Scenario: Name is required when checking out
    When I attempt to checkout without a name
    Then I should see the error message "Name can't be blank"

  Scenario: Address is required when checking out
    When I attempt to checkout without an address
    Then I should see the error message "Address can't be blank"

  Scenario: Thank you message should display after an adoption
    When I complete an adoption
    Then I should see "Thank you for adopting a puppy"

  Scenario: User should be prompted with valid payment options
    When I am checking out
    Then I should see the following payment options:
      | option         |
      | Credit card    |
      | Purchase order |
      | Check          |

  Scenario: Demonstrating Transformations
    When I print the value for today
    And I print the value for tomorrow
    And I print the value for 6 days from today
    And I added line item 1
    Then I am happy

  Scenario: Please thank the person for the order
    Given I have an order for "Mickey Mouse"
    When I process that order
    Then I should see "Please thank Mickey Mouse for the order"