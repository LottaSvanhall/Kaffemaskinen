Feature: Choose chocolate or chococoffee
As a user not appreciating coffee so much I want to be able to chose between chocolate or chococoffee.

  Scenario: Choose chocolate
    Given that the machine works
    And the water is connected
    And there is chocolate powder left in the machine
    When I place a cup on the cup tray
    And I choose chocolate
    And I choose cup size
    And I press the start button
    Then I should be served a chocolate

  Scenario: Choose chococoffee
    Given that the machine works
    And the water is connected
    And there is chocolate powder left in the machine
    And there is coffee beans left in the machine
    When I place a cup on the cup tray
    And I choose chococoffee
    And I choose cup size
    And I press the start button
    Then I should be served a chococoffee

  Scenario: Out of chocolate in the machine
    Given that there is no chocolate powder left in the machine
    And that the machine works
    And the water is connected
    When I place a cup on the cup tray
    And I press the start button
    Then I should be informed that the machine is out of chocolate
    And the display should show the message "Out of chocolate, please contact service crew to get machine ready for work"

  Scenario: Out of coffee beans in the machine
    Given that there is no coffee beans left in the machine
    And that the machine works
    And the water is connected
    When I place a cup on the cup tray
    And I press the start button
    Then I should be informed that the machine is out of coffee beans
    And the display should show the message "Out of coffee, please contact service crew to get machine ready for work"

  Scenario: Out of water in the machine
    Given that the machine doesn't work
    And the water is not connected
    Then I should be informed that the machine is out of water
    And the display should show the message "Out of water, machine needs service"
