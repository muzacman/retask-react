Feature: The New Task form will create a New Task and add it to a New Movement

  Background: I am on the New Movement Page and I am an authenticated user
    Given I am on the New Movement page
    And I am logged in as an authenticated user
    And I the New Task form is visible

  Scenario: Error message should display if the Add Task form is submitted without a name
    When the "name" field on the New Task form on the New Movement page is empty
    And I click the Add Task button on the New Task form on the New Movement page
    Then the missing name error should appear

  Scenario: Error message should display if the Add Task form is submitted with an invalid name
    When I enter "*#)%;" into the "name" field on the New Task form on the New Movement page
    And I click the Add Task button on the New Task form on the New Movement page
    Then the invalid name error should appear

  Scenario: New task form should add a new task to the movement
    When I enter "Enter a Valid Task Name" into the "name" field on the New Task form on the New Movement page
    And I click the Add Task button on the New Task form on the New Movement page
    Then the New Task Form should create a new task and add it to the movement
    And display the new task in the Tasks Table on the New Movement page
