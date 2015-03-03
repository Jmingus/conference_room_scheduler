  Feature: User Auth
    In order to use the application
    As a user of the app
    I want to be able to login or create an account

    Background:
      Given I am not logged in

    Scenario: User must login
      Given I visit "/rooms"
      Then I should see "Log in"
      And I should see "Email"
      And I should see "Password"

    Scenario: User must have a valid account
      Given I visit "/users/sign_in"
      And I type "user@example.com" into "Email"
      And I type "password" into "Password"
      And I click "Log in"
      Then I should see "Invalid email or password"

    Scenario: User can login with a valid account
      Given I have a valid account
      When I visit "/users/sign_in"
      And I type "user@example.com" into "Email"
      And I type "password" into "Password"
      And I click "Log in"
      Then I should see "Welcome"

    Scenario: User can create an account
      Given I am not logged in
      When I visit "/users/sign_up"
      And I type "Frank" into "First name"
      And I type "Larry" into "Last name"
      And I pick "3" from user_date_of_birth_3i
      And I pick "March" from user_date_of_birth_2i
      And I pick "2015" from user_date_of_birth_1i
      And I pick "Blue" from user_favorite_color
      And I type "user@example.com" into "Email"
      And I type "password" into "Password"
      And I type "password" into "Confirmation"
      And I click "Sign up"
      Then I should see "Welcome"