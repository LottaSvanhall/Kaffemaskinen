Feature: Serve a cup of coffee
    As a user I want to be served my favorite cup of coffee (black coffee, coffee with milk and sugar, coffee with milk or coffee with sugar).

    Scenario: Choose black coffee
        Given that the machine works
        And the water is connected
        And there is coffee beans left in the machine
        When I place a cup on the cup tray
        And I choose black coffee
        And I choose strengh of the coffee
        And I choose cup size
        And I press the start button
        Then I should be served a black coffee

    Scenario: Choose coffee with milk and sugar
        Given that the machine works
        And the water is connected
        And there is coffee beans left in the machine
        And there is milk left
        And there is sugar left
        When I choose coffee with milk and sugar
        And I choose strengh of the coffee
        And I choose cup size
        And I press the start button
        Then I should be served a coffee with milk and sugar

    Scenario: Choose coffee with milk
        Given that the machine works
        And the water is connected
        And there is coffee beans left in the machine
        And there is milk left
        When I choose coffee with milk
        And I choose strengh of the coffee
        And I choose cup size
        And I press the start button
        Then I should be served a coffee with milk

    Scenario: Choose coffee with sugar
        Given that the machine works
        And the water is connected
        And there is coffee beans left in the machine
        And there is sugar left
        When I choose coffee with sugar
        And I choose strengh of the coffee
        And I choose cup size
        And I press the start button
        Then I should be served a coffee with sugar

    Scenario: Out of coffee beans in the machine
        Given that there is no coffee beans left in the machine
        And that the machine works
        And the water is connected
        When I place a cup on the cup tray
        And I press the start button
        Then I should be informed that the machine is out of coffee beans
        And the display should show the message "Out of coffee, please contact service crew to get machine ready for work"
        
    Scenario: Out of milk powder in the machine
        Given that there is no milk powder left in the machine
        And that the machine works
        And the water is connected
        When I place a cup on the cup tray
        And I press the start button
        Then I should be informed that the machine is out of milk
        And the display should show the message "Out of milk, please contact service crew to get machine ready for work"

    Scenario: Out of sugar in the machine
        Given that there is no sugar left in the machine
        And that the machine works
        And the water is connected
        When I place a cup on the cup tray
        And I press the start button
        Then I should be informed that the machine is out of sugar
        And the display should show the message "Out of sugar, please contact service crew to get machine ready for work"

    Scenario: Out of water in the machine
        Given that the machine doesn't work
        And the water is not connected
        Then I should be informed that the machine is out of water
        And the display should show the message "Out of water, machine needs service"
