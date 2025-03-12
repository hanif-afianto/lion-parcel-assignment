Feature: Retrieve a Single User

  Scenario: Successfully retrieve user details
    Given I have a valid user ID
    When I request the user details
    Then the response status should be 200
    And the user details should match expectations
