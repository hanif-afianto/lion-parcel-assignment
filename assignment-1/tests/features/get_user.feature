Feature: Create a New User

  Scenario: Successfully create a new user
    Given I provide valid user details "Hanif" and "Afianto"
    When I send a request to create a user
    Then the response status should be 201
    And the user should be created with the correct details
