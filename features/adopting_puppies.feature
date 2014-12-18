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
