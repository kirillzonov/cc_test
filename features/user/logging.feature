Feature: User logging in
  In order to use CruiseChannel
  I as User
  Wants to be able to log in system

Background:
    Given the following user exists:
      |  email             |  password  |
      |  user@example.org  |  password  |
    And I am on the login page

Scenario: User tries to log in with wrong email
    And I fill in "Email" with "wrong@example.org"
    And I fill in "Password" with "password"
    And I press "login"
    Then I should see "Wrong email or password"

Scenario: User tries to log in with wrong password
    When I fill in "Email" with "user@example.org"
    And I fill in "Password" with "fake_password"
    And I press "login"
    Then I should see "Wrong email or password"

Scenario: User successfully logs in with right credentials
    When I fill in "Email" with "user@example.org"
    And I fill in "Password" with "password"
    And I press "login"
    Then I should see "You logged in!"

