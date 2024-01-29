Feature: Clean the machine once a week so it will be fit for fight and ready to serve the users with beverage
  As a user I want a clean and tidy machine so I can get my beloved beverage without any risk getting stomach sick.

  Scenario: Cleaning and empty coffee grounds and refilling machine
    Given that the power is off
    And the water is disconnected
    And the surplus water is removed
    And the coffee ground is removed
    And there is coffee beans in the machine
    And there is milk powder in the machine
    And there is sugar in the machine
    And there is chocolate powder in the machine
    And machine filled up with cups
    Then the machine should be ready for work
