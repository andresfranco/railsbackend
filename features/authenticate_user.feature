Feature: Authenticate user
  In order to test login
  I want to login as a registered user

  Scenario: Login existent user
    Given I am not logged in
    When I go to login
    And I fill in "user_email" with "admin@admin.com"
    And I fill in "user_password" with "password1"
    And I press "Log in"
    Then I should see "Signed in successfully."
