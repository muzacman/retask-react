Feature: The create account page should have verification on all the fields

  Background: I am on the site Login page
    Given I am on the site "Login" page

  Scenario: Error message should become visible when I try to submit the login form without an email
    When I enter "Mar!oKart20" into the "password" field on the "Login" component on the "Login" page
    And I click on the "submit" button on the "Login" component on the "Login" page
    Then the "missing email error" should show on the "Login" component on the "Login" page

  Scenario: Error message should become visible when I try to submit the login form without a password
    When I enter "test@email.com" into the "email" field on the "Login" component on the "Login" page
    And I click on the "submit" button on the "Login" component on the "Login" page
    Then the "missing password error" should show on the "Login" component on the "Login" page

  Scenario: Error message should become visible when I try to submit the login form with an incorrect password
    When I enter "test@email.com" into the "email" field on the "Login" component on the "Login" page
    And I enter "password" into the "password" field on the "Login" component on the "Login" page
    And I click on the "submit" button on the "Login" component on the "Login" page
    Then the "incorrect user/password combination error" should show on the "Login" component on the "Login" page

  Scenario: Register component should become visible when I click on the Register link
    When I click on the "Register" button on the "Login" page
    Then the "Register" component should show on the "Login" page

  Scenario: Message should become visible and an email should send when I click on the forgot password link
    When I click on the "Forgot Password" link on the "Login" component on the "Login" page
    Then the "reset password email sent message" should display on the "Login" page
    And the "reset password email" should be sent to "test@email.com"

  Scenario: I should be redirected to the Home page when I submit the login form with the correct email and password
    When I enter "test@email.com" into the "email" field on the "Login" component on the "Login" page
    And I enter "Mar!oKart20" into the "password" field on the "Login" component on the "Login" page
    And I click on the "submit" button on the "Login" component on the "Login" page
    Then I should be redirected to the "Home" page




