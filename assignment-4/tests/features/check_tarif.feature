Feature: Check Shipping Rate Menu

  Scenario: Successfully See Total Price 
    Given the application is launched
    When the user opens the Cek Tarif menu
    And the user enters origin route "Tigaraksa" and destination route "Balaraja"
    And the user enters total weight "100"
    And the user selects Regular shipping option
    Then the user should see the exact price between the Regular shipping cost and the total estimated cost