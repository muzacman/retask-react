Feature: The New Movement form will create a New Movement


Feature: The New Movement form should have verification on all fields
  Background: I am on the New Movement Page and I am an authenticated user
    Given I am on the New Movement page
    And I am logged in as an authenticated user

  Scenario: Error message should display if the Add Movement form is submitted without a name
    When the "name" field on the New Movement form on the New Movement page is empty
    And I click the Add button on the New Movement form on the New Movement page
    Then the missing name error should appear

  Scenario: Error message should display if the Add Movement form is submitted with an invalid name
    When I enter "*#)%;" into the "name" field on the New Movement form on the New Movement page
    And I click the Add button on the New Movement form on the New Movement page
    Then the invalid name error should appear

