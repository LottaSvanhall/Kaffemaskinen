Feature: Choose coffee strength
  As a user I want to be able to control the strength of my coffee (weak, normal, strong) by pressing 
  arrow up or down on the screen. Then I can get a cup of coffee with the strength I prefer.

  Scenario: Successfully decrease the strength of the coffee
    Given that the machine works 
    And that I have already chosen which type of coffee I want
    When I want to chose a weaker strength I can press the down arrow to go from normal to weak
    Then the choice should be registered
    And the coffee should be served with a weaker strength
    
  Scenario: Successfully increase the strength of the coffee
    Given that the machine works
    And that I have already chosen which type of coffee I want
    When I want to chose a stronger strength I can press the up arrow to go from normal to strong
    Then the choice should be registered
    And the coffee should be served with a stronger strength

  Scenario: When user want a default (normal) strength of the coffee
    Given that the machine works
    And that I have already chosen which type of coffee I want
    When I am not doing a choice of strength
    Then the choice should be registered
    And the coffee should be served with a normal strength

