Feature: Choose cup-size
  As a user I want to be able to choose the size of the cup by pressing size buttons on the machine display. Then I can get a small, normal or 
  big cup of the beverage I prefer.

  Scenario: Successfully get a big cup of the beverage I want
    Given that the machine works
    And that I have already chosen which type of beverage I want
    When I want to choose a big cup size I can press the soft button for this choice on the display
    Then the choice should be registered
    And the beverage should be served with more in the cup

  Scenario: Successfully get a small cup of the beverage I want
    Given that the machine works
    And that I have already chosen which type of beverage I want
    When I want to choose a small cup size I can press the soft button for this choice on the display
    Then the choice should be registered
    And the beverage should be served with less in the cup

  Scenario: When user want a default (normal) cup of the beverage
    Given that the machine works
    And that I have already chosen which type of beverage I want
    When I am not doing a choice of cup size
    Then the choice should be registered
    And the beverage should be served a normal amount of coffee 