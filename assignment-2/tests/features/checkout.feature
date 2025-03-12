Feature: Shopping Cart Checkout

  Scenario: Successful checkout process on SauceDemo
    Given the user is on the SauceDemo login page
    When the user logs in with valid credentials
    And the user adds "Sauce Labs Backpack" to the cart
    And the user proceeds to checkout
    And the user enters shipping details
    And the user confirms the order
    Then the order should be successfully placed
