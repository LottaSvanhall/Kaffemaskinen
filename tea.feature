Feature: Choose hot water
As a user and tea lover I want to be served a cup of hot water for my tea

    Scenario: Choose hot water
    Given that the machine works
    And the water is connected
    When I place a cup on the cup tray
    And I choose hot water
    And I choose cup size
    And I press the start button
    Then I should be served hot water

   Scenario: Out of water in the machine
    Given that the machine doesn't work
    And the water is not connected
    Then I should be informed that the machine is out of water
    And the display should show the message "Out of water, machine needs service"

