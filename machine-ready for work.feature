Feature: Check if the machine is ready for use
  As a user I always want the machine to be ready for use so I can get my beloved beverage. 
  Machine is checked twice a week by the service crew.

  Scenario: Successfully check of machine so it's ready to serve beverage to users
    Given that the power is on
    And the water is connected
    And the water is heated
    And there is coffee beans in the machine
    And there is milk powder in the machine
    And there is sugar in the machine
    And there is chocolate powder in the machine
    And machine filled up with cups 
    Then the machine should be ready to serve beverage


