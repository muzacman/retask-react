Feature: The create account page should have verification on all the fields

  Background: I am on the site Login page and am looking at the Register component
    Given I am on the site "Login" page
    And I have the "Register" component on the "Login" page visible

  Scenario: Error message should become visible when I try to submit the account creation form without a name
    When I enter "test@email.com" into the "email" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "password" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "verify password" field on the "Register" component on the "Login" page
    And I click on the "submit" button on the "Register" component on the "Login" page
    Then the "missing name error" should show on the "Register" component on the "Login" page


  Scenario: Error message should become visible when I try to submit the account creation form without an email
    When I enter "Testy Testerson" into the "name" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "password" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "verify password" field on the "Register" component on the "Login" page
    And I click on the "submit" button on the "Register" component on the "Login" page
    Then the "missing email error" should show on the "Register" component on the "Login" page


  Scenario: Error message should become visible when I try to submit the account creation form without a password
    When I enter "Testy Testerson" into the "name" field on the "Register" component on the "Login" page
    And I enter "test@email.com" into the "email" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "verify password" field on the "Register" component on the "Login" page
    And I click on the "submit" button on the "Register" component on the "Login" page
    Then the "missing password error" should show on the "Register" component on the "Login" page


  Scenario: Error message should become visible when I try to submit the account creation form without a verify password
    When I enter "Testy Testerson" into the "name" field on the "Register" component on the "Login" page
    And I enter "test@email.com" into the "email" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "password" field on the "Register" component on the "Login" page
    And I click on the "submit" button on the "Register" component on the "Login" page
    Then the "password not verified error" should show on the "Register" component on the "Login" page

  Scenario: Error message should become visible when I try to submit the account creation form and the passwords don't match
    When I enter "Testy Testerson" into the "name" field on the "Register" component on the "Login" page
    And I enter "test@email.com" into the "email" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "password" field on the "Register" component on the "Login" page
    And I enter "MarioKart20" into the "verify password" field on the "Register" component on the "Login" page
    And I click on the "submit" button on the "Register" component on the "Login" page
    Then the "passwords do not match error" should show on the "Register" component on the "Login" page

  Scenario: A password strength meter should appear with a message when I fill in the password field with a strong password
    When I enter "Testy Testerson" into the "name" field on the "Register" component on the "Login" page
    And I enter "test@email.com" into the "email" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "password" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "verify password" field on the "Register" component on the "Login" page
    And I fill in the password field on the "Register" component on the "Login" page
    Then the "password strength meter" should show "strong" on the "Register" component on the "Login" page

  Scenario: A password strength meter should appear with a message when I fill in the password field with a weak password
    When I enter "Testy Testerson" into the "name" field on the "Register" component on the "Login" page
    And I enter "test@email.com" into the "email" field on the "Register" component on the "Login" page
    And I enter "Password" into the "password" field on the "Register" component on the "Login" page
    And I enter "Password" into the "verify password" field on the "Register" component on the "Login" page
    And I fill in the password field on the "Register" component on the "Login" page
    Then the "password strength meter" should show "weak" on the "Register" component on the "Login" page

  Scenario: A success message should display that an email has been sent to confirm multifactor authentication
    When I enter "Testy Testerson" into the "name" field on the "Register" component on the "Login" page
    And I enter "test@email.com" into the "email" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "password" field on the "Register" component on the "Login" page
    And I enter "Mar!oKart20" into the "verify password" field on the "Register" component on the "Login" page
    And I click on the "submit" button on the "Register" component on the "Login" page
    Then a "Success! an email has been sent to your email address to confirm your identity" message should appear on the "Login" page