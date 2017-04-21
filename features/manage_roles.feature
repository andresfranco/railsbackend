Feature: Manage roles
  In order to test roles
  I want to create and manage roles

  Scenario: Roles List
    Given I have roles named administrator,agent,client
    When I go to the list of roles
    Then I should see "administrator"
    Then I should see "client"
    Then I should see "agent"
