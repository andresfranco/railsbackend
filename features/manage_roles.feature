Feature: Manage roles
  In order to make a backend
  As an administrator
  I want to create and manage roles

  Scenario: Roles List
    Given I have roles named administrator,agent,client
    When I go to the list of roles
    Then I should see "administrator"
    And I should see "agent"
    And I should see "client"
